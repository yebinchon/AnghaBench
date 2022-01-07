
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gntdev_grant_map {TYPE_1__* vma; int count; int index; } ;
struct TYPE_2__ {unsigned long vm_start; int vm_end; } ;


 int EAGAIN ;
 unsigned long PAGE_SHIFT ;
 int WARN_ON (int) ;
 int in_range (struct gntdev_grant_map*,unsigned long,unsigned long) ;
 unsigned long max (unsigned long,unsigned long) ;
 unsigned long min (unsigned long,int ) ;
 int pr_debug (char*,int ,int ,unsigned long,int ,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int unmap_grant_pages (struct gntdev_grant_map*,unsigned long,unsigned long) ;

__attribute__((used)) static int unmap_if_in_range(struct gntdev_grant_map *map,
         unsigned long start, unsigned long end,
         bool blockable)
{
 unsigned long mstart, mend;
 int err;

 if (!in_range(map, start, end))
  return 0;

 if (!blockable)
  return -EAGAIN;

 mstart = max(start, map->vma->vm_start);
 mend = min(end, map->vma->vm_end);
 pr_debug("map %d+%d (%lx %lx), range %lx %lx, mrange %lx %lx\n",
   map->index, map->count,
   map->vma->vm_start, map->vma->vm_end,
   start, end, mstart, mend);
 err = unmap_grant_pages(map,
    (mstart - map->vma->vm_start) >> PAGE_SHIFT,
    (mend - mstart) >> PAGE_SHIFT);
 WARN_ON(err);

 return 0;
}
