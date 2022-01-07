
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_map {unsigned long base; int num; struct resource_map* next; } ;
struct resource {unsigned long start; unsigned long end; } ;
struct pcmcia_align_data {struct resource_map* map; } ;
typedef unsigned long resource_size_t ;


 unsigned long pcmcia_common_align (struct pcmcia_align_data*,unsigned long) ;

__attribute__((used)) static resource_size_t
pcmcia_align(void *align_data, const struct resource *res,
 resource_size_t size, resource_size_t align)
{
 struct pcmcia_align_data *data = align_data;
 struct resource_map *m;
 resource_size_t start;

 start = pcmcia_common_align(data, res->start);

 for (m = data->map->next; m != data->map; m = m->next) {
  unsigned long map_start = m->base;
  unsigned long map_end = m->base + m->num - 1;






  if (start < map_start)
   start = pcmcia_common_align(data, map_start);





  if (start >= res->end)
   break;

  if ((start + size - 1) <= map_end)
   break;
 }




 if (m == data->map)
  start = res->end;

 return start;
}
