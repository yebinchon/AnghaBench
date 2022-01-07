
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gntdev_grant_map {TYPE_1__* vma; } ;
struct TYPE_2__ {unsigned long vm_start; unsigned long vm_end; } ;



__attribute__((used)) static bool in_range(struct gntdev_grant_map *map,
         unsigned long start, unsigned long end)
{
 if (!map->vma)
  return 0;
 if (map->vma->vm_start >= end)
  return 0;
 if (map->vma->vm_end <= start)
  return 0;

 return 1;
}
