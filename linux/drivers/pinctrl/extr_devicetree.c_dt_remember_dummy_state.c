
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_map {int type; } ;
struct pinctrl {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PIN_MAP_TYPE_DUMMY_STATE ;
 int dt_remember_or_free_map (struct pinctrl*,char const*,int *,struct pinctrl_map*,int) ;
 struct pinctrl_map* kzalloc (int,int ) ;

__attribute__((used)) static int dt_remember_dummy_state(struct pinctrl *p, const char *statename)
{
 struct pinctrl_map *map;

 map = kzalloc(sizeof(*map), GFP_KERNEL);
 if (!map)
  return -ENOMEM;


 map->type = PIN_MAP_TYPE_DUMMY_STATE;

 return dt_remember_or_free_map(p, statename, ((void*)0), map, 1);
}
