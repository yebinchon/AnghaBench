
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gntdev_grant_map {TYPE_1__* unmap_ops; int count; int index; } ;
struct TYPE_2__ {int handle; } ;


 int __unmap_grant_pages (struct gntdev_grant_map*,int,int) ;
 int pr_debug (char*,int ,int ,int,int) ;

__attribute__((used)) static int unmap_grant_pages(struct gntdev_grant_map *map, int offset,
        int pages)
{
 int range, err = 0;

 pr_debug("unmap %d+%d [%d+%d]\n", map->index, map->count, offset, pages);




 while (pages && !err) {
  while (pages && map->unmap_ops[offset].handle == -1) {
   offset++;
   pages--;
  }
  range = 0;
  while (range < pages) {
   if (map->unmap_ops[offset+range].handle == -1)
    break;
   range++;
  }
  err = __unmap_grant_pages(map, offset, range);
  offset += range;
  pages -= range;
 }

 return err;
}
