
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct rio_mport_mapping* vm_private_data; } ;
struct rio_mport_mapping {int ref; int phys_addr; } ;


 int MMAP ;
 int kref_get (int *) ;
 int rmcd_debug (int ,char*,int *) ;

__attribute__((used)) static void mport_mm_open(struct vm_area_struct *vma)
{
 struct rio_mport_mapping *map = vma->vm_private_data;

 rmcd_debug(MMAP, "%pad", &map->phys_addr);
 kref_get(&map->ref);
}
