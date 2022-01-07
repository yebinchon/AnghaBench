
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int dummy; } ;
struct gnttab_unmap_grant_ref {int status; } ;
typedef int grant_handle_t ;


 int BUG () ;
 int EINVAL ;
 int GNTMAP_host_map ;
 int GNTST_okay ;
 int GNTTABOP_unmap_grant_ref ;
 scalar_t__ HYPERVISOR_grant_table_op (int ,struct gnttab_unmap_grant_ref*,int) ;
 int XENBUS_MAX_RING_GRANTS ;
 int gnttab_set_unmap_op (struct gnttab_unmap_grant_ref*,unsigned long,int ,int ) ;
 int xenbus_dev_error (struct xenbus_device*,int,char*,int ,int) ;

int xenbus_unmap_ring(struct xenbus_device *dev,
        grant_handle_t *handles, unsigned int nr_handles,
        unsigned long *vaddrs)
{
 struct gnttab_unmap_grant_ref unmap[XENBUS_MAX_RING_GRANTS];
 int i;
 int err;

 if (nr_handles > XENBUS_MAX_RING_GRANTS)
  return -EINVAL;

 for (i = 0; i < nr_handles; i++)
  gnttab_set_unmap_op(&unmap[i], vaddrs[i],
        GNTMAP_host_map, handles[i]);

 if (HYPERVISOR_grant_table_op(GNTTABOP_unmap_grant_ref, unmap, i))
  BUG();

 err = GNTST_okay;
 for (i = 0; i < nr_handles; i++) {
  if (unmap[i].status != GNTST_okay) {
   xenbus_dev_error(dev, unmap[i].status,
      "unmapping page at handle %d error %d",
      handles[i], unmap[i].status);
   err = unmap[i].status;
   break;
  }
 }

 return err;
}
