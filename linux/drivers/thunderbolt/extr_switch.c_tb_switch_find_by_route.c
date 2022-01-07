
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct tb_switch {int dummy; } ;
struct tb_sw_lookup {scalar_t__ route; struct tb* tb; } ;
struct tb {int root_switch; } ;
struct device {int dummy; } ;
typedef int lookup ;


 struct device* bus_find_device (int *,int *,struct tb_sw_lookup*,int ) ;
 int memset (struct tb_sw_lookup*,int ,int) ;
 int tb_bus_type ;
 struct tb_switch* tb_switch_get (int ) ;
 int tb_switch_match ;
 struct tb_switch* tb_to_switch (struct device*) ;

struct tb_switch *tb_switch_find_by_route(struct tb *tb, u64 route)
{
 struct tb_sw_lookup lookup;
 struct device *dev;

 if (!route)
  return tb_switch_get(tb->root_switch);

 memset(&lookup, 0, sizeof(lookup));
 lookup.tb = tb;
 lookup.route = route;

 dev = bus_find_device(&tb_bus_type, ((void*)0), &lookup, tb_switch_match);
 if (dev)
  return tb_to_switch(dev);

 return ((void*)0);
}
