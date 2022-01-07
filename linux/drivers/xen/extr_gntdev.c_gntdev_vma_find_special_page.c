
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct gntdev_grant_map* vm_private_data; } ;
struct page {int dummy; } ;
struct gntdev_grant_map {unsigned long pages_vm_start; struct page** pages; } ;


 unsigned long PAGE_SHIFT ;

__attribute__((used)) static struct page *gntdev_vma_find_special_page(struct vm_area_struct *vma,
       unsigned long addr)
{
 struct gntdev_grant_map *map = vma->vm_private_data;

 return map->pages[(addr - map->pages_vm_start) >> PAGE_SHIFT];
}
