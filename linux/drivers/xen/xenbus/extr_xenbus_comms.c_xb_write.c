
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenstore_domain_interface {scalar_t__ req_cons; scalar_t__ req_prod; int req; } ;
typedef scalar_t__ XENSTORE_RING_IDX ;


 int EIO ;
 int check_indexes (scalar_t__,scalar_t__) ;
 void* get_output_chunk (scalar_t__,scalar_t__,int ,unsigned int*) ;
 int memcpy (void*,void const*,unsigned int) ;
 int notify_remote_via_evtchn (int ) ;
 int virt_mb () ;
 int virt_wmb () ;
 int xb_data_to_write () ;
 int xen_store_evtchn ;
 struct xenstore_domain_interface* xen_store_interface ;

__attribute__((used)) static int xb_write(const void *data, unsigned int len)
{
 struct xenstore_domain_interface *intf = xen_store_interface;
 XENSTORE_RING_IDX cons, prod;
 unsigned int bytes = 0;

 while (len != 0) {
  void *dst;
  unsigned int avail;


  cons = intf->req_cons;
  prod = intf->req_prod;
  if (!check_indexes(cons, prod)) {
   intf->req_cons = intf->req_prod = 0;
   return -EIO;
  }
  if (!xb_data_to_write())
   return bytes;


  virt_mb();

  dst = get_output_chunk(cons, prod, intf->req, &avail);
  if (avail == 0)
   continue;
  if (avail > len)
   avail = len;

  memcpy(dst, data, avail);
  data += avail;
  len -= avail;
  bytes += avail;


  virt_wmb();
  intf->req_prod += avail;


  if (prod <= intf->req_cons)
   notify_remote_via_evtchn(xen_store_evtchn);
 }

 return bytes;
}
