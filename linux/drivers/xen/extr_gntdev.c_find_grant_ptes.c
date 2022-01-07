
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct gntdev_grant_map {int flags; unsigned int count; int * unmap_ops; TYPE_2__* grants; int * map_ops; TYPE_1__* vma; } ;
typedef int pte_t ;
struct TYPE_6__ {int maddr; } ;
struct TYPE_5__ {int domid; int ref; } ;
struct TYPE_4__ {unsigned long vm_start; } ;


 int BUG_ON (int) ;
 int GNTMAP_application_map ;
 int GNTMAP_contains_pte ;
 unsigned long PAGE_SHIFT ;
 int XENFEAT_gnttab_map_avail_bits ;
 int _GNTMAP_guest_avail0 ;
 TYPE_3__ arbitrary_virt_to_machine (int *) ;
 int gnttab_set_map_op (int *,int ,int,int ,int ) ;
 int gnttab_set_unmap_op (int *,int ,int,int) ;
 scalar_t__ xen_feature (int ) ;

__attribute__((used)) static int find_grant_ptes(pte_t *pte, unsigned long addr, void *data)
{
 struct gntdev_grant_map *map = data;
 unsigned int pgnr = (addr - map->vma->vm_start) >> PAGE_SHIFT;
 int flags = map->flags | GNTMAP_application_map | GNTMAP_contains_pte;
 u64 pte_maddr;

 BUG_ON(pgnr >= map->count);
 pte_maddr = arbitrary_virt_to_machine(pte).maddr;






 if (xen_feature(XENFEAT_gnttab_map_avail_bits))
  flags |= (1 << _GNTMAP_guest_avail0);

 gnttab_set_map_op(&map->map_ops[pgnr], pte_maddr, flags,
     map->grants[pgnr].ref,
     map->grants[pgnr].domid);
 gnttab_set_unmap_op(&map->unmap_ops[pgnr], pte_maddr, flags,
       -1 );
 return 0;
}
