
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenstore_domain_interface {scalar_t__ req_prod; scalar_t__ req_cons; } ;


 scalar_t__ XENSTORE_RING_SIZE ;
 int list_empty (int *) ;
 int xb_write_list ;
 struct xenstore_domain_interface* xen_store_interface ;

__attribute__((used)) static int xb_data_to_write(void)
{
 struct xenstore_domain_interface *intf = xen_store_interface;

 return (intf->req_prod - intf->req_cons) != XENSTORE_RING_SIZE &&
  !list_empty(&xb_write_list);
}
