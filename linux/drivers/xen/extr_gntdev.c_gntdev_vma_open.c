
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct gntdev_grant_map* vm_private_data; } ;
struct gntdev_grant_map {int users; } ;


 int pr_debug (char*,struct vm_area_struct*) ;
 int refcount_inc (int *) ;

__attribute__((used)) static void gntdev_vma_open(struct vm_area_struct *vma)
{
 struct gntdev_grant_map *map = vma->vm_private_data;

 pr_debug("gntdev_vma_open %p\n", vma);
 refcount_inc(&map->users);
}
