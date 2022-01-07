
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_lookup {int num_stripes; } ;


 int nr_parity_stripes (struct map_lookup const*) ;

__attribute__((used)) static inline int nr_data_stripes(const struct map_lookup *map)
{
 return map->num_stripes - nr_parity_stripes(map);
}
