
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unmap ;
struct xenbus_device {int otherend_id; } ;
struct gnttab_unmap_grant_ref {int status; scalar_t__ handle; } ;
struct gnttab_map_grant_ref {int status; scalar_t__ handle; } ;
typedef scalar_t__ phys_addr_t ;
typedef int map ;
typedef int grant_ref_t ;
typedef scalar_t__ grant_handle_t ;


 int BUG () ;
 int EINVAL ;
 int GNTMAP_host_map ;
 int GNTST_okay ;
 int GNTTABOP_unmap_grant_ref ;
 scalar_t__ HYPERVISOR_grant_table_op (int ,struct gnttab_unmap_grant_ref*,int) ;
 scalar_t__ INVALID_GRANT_HANDLE ;
 int XENBUS_MAX_RING_GRANTS ;
 int gnttab_batch_map (struct gnttab_unmap_grant_ref*,int) ;
 int gnttab_set_map_op (struct gnttab_unmap_grant_ref*,scalar_t__,unsigned int,int ,int ) ;
 int gnttab_set_unmap_op (struct gnttab_unmap_grant_ref*,scalar_t__,int ,scalar_t__) ;
 int memset (struct gnttab_unmap_grant_ref*,int ,int) ;
 int xenbus_dev_fatal (struct xenbus_device*,int,char*,int ,int ) ;

__attribute__((used)) static int __xenbus_map_ring(struct xenbus_device *dev,
        grant_ref_t *gnt_refs,
        unsigned int nr_grefs,
        grant_handle_t *handles,
        phys_addr_t *addrs,
        unsigned int flags,
        bool *leaked)
{
 struct gnttab_map_grant_ref map[XENBUS_MAX_RING_GRANTS];
 struct gnttab_unmap_grant_ref unmap[XENBUS_MAX_RING_GRANTS];
 int i, j;
 int err = GNTST_okay;

 if (nr_grefs > XENBUS_MAX_RING_GRANTS)
  return -EINVAL;

 for (i = 0; i < nr_grefs; i++) {
  memset(&map[i], 0, sizeof(map[i]));
  gnttab_set_map_op(&map[i], addrs[i], flags, gnt_refs[i],
      dev->otherend_id);
  handles[i] = INVALID_GRANT_HANDLE;
 }

 gnttab_batch_map(map, i);

 for (i = 0; i < nr_grefs; i++) {
  if (map[i].status != GNTST_okay) {
   err = map[i].status;
   xenbus_dev_fatal(dev, map[i].status,
      "mapping in shared page %d from domain %d",
      gnt_refs[i], dev->otherend_id);
   goto fail;
  } else
   handles[i] = map[i].handle;
 }

 return GNTST_okay;

 fail:
 for (i = j = 0; i < nr_grefs; i++) {
  if (handles[i] != INVALID_GRANT_HANDLE) {
   memset(&unmap[j], 0, sizeof(unmap[j]));
   gnttab_set_unmap_op(&unmap[j], (phys_addr_t)addrs[i],
         GNTMAP_host_map, handles[i]);
   j++;
  }
 }

 if (HYPERVISOR_grant_table_op(GNTTABOP_unmap_grant_ref, unmap, j))
  BUG();

 *leaked = 0;
 for (i = 0; i < j; i++) {
  if (unmap[i].status != GNTST_okay) {
   *leaked = 1;
   break;
  }
 }

 return err;
}
