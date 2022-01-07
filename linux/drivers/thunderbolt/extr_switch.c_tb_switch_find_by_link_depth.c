
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct tb_switch {int dummy; } ;
struct tb_sw_lookup {void* depth; void* link; struct tb* tb; } ;
struct tb {int dummy; } ;
struct device {int dummy; } ;
typedef int lookup ;


 struct device* bus_find_device (int *,int *,struct tb_sw_lookup*,int ) ;
 int memset (struct tb_sw_lookup*,int ,int) ;
 int tb_bus_type ;
 int tb_switch_match ;
 struct tb_switch* tb_to_switch (struct device*) ;

struct tb_switch *tb_switch_find_by_link_depth(struct tb *tb, u8 link, u8 depth)
{
 struct tb_sw_lookup lookup;
 struct device *dev;

 memset(&lookup, 0, sizeof(lookup));
 lookup.tb = tb;
 lookup.link = link;
 lookup.depth = depth;

 dev = bus_find_device(&tb_bus_type, ((void*)0), &lookup, tb_switch_match);
 if (dev)
  return tb_to_switch(dev);

 return ((void*)0);
}
