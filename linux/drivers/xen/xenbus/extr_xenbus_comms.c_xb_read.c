
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenstore_domain_interface {scalar_t__ rsp_cons; scalar_t__ rsp_prod; int rsp; } ;
typedef scalar_t__ XENSTORE_RING_IDX ;


 int EIO ;
 scalar_t__ XENSTORE_RING_SIZE ;
 int check_indexes (scalar_t__,scalar_t__) ;
 char* get_input_chunk (scalar_t__,scalar_t__,int ,unsigned int*) ;
 int memcpy (void*,char const*,unsigned int) ;
 int notify_remote_via_evtchn (int ) ;
 int virt_mb () ;
 int virt_rmb () ;
 int xen_store_evtchn ;
 struct xenstore_domain_interface* xen_store_interface ;

__attribute__((used)) static int xb_read(void *data, unsigned int len)
{
 struct xenstore_domain_interface *intf = xen_store_interface;
 XENSTORE_RING_IDX cons, prod;
 unsigned int bytes = 0;

 while (len != 0) {
  unsigned int avail;
  const char *src;


  cons = intf->rsp_cons;
  prod = intf->rsp_prod;
  if (cons == prod)
   return bytes;

  if (!check_indexes(cons, prod)) {
   intf->rsp_cons = intf->rsp_prod = 0;
   return -EIO;
  }

  src = get_input_chunk(cons, prod, intf->rsp, &avail);
  if (avail == 0)
   continue;
  if (avail > len)
   avail = len;


  virt_rmb();

  memcpy(data, src, avail);
  data += avail;
  len -= avail;
  bytes += avail;


  virt_mb();
  intf->rsp_cons += avail;


  if (intf->rsp_prod - cons >= XENSTORE_RING_SIZE)
   notify_remote_via_evtchn(xen_store_evtchn);
 }

 return bytes;
}
