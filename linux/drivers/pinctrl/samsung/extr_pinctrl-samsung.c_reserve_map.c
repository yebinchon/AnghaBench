
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_map {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct pinctrl_map* krealloc (struct pinctrl_map*,int,int ) ;
 int memset (struct pinctrl_map*,int ,unsigned int) ;

__attribute__((used)) static int reserve_map(struct device *dev, struct pinctrl_map **map,
         unsigned *reserved_maps, unsigned *num_maps,
         unsigned reserve)
{
 unsigned old_num = *reserved_maps;
 unsigned new_num = *num_maps + reserve;
 struct pinctrl_map *new_map;

 if (old_num >= new_num)
  return 0;

 new_map = krealloc(*map, sizeof(*new_map) * new_num, GFP_KERNEL);
 if (!new_map)
  return -ENOMEM;

 memset(new_map + old_num, 0, (new_num - old_num) * sizeof(*new_map));

 *map = new_map;
 *reserved_maps = new_num;

 return 0;
}
