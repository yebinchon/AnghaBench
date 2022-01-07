
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {int groups; int * type; int * bus; struct device* parent; } ;
struct TYPE_4__ {int route_lo; int route_hi; int depth; } ;
struct tb_switch {int safe_mode; TYPE_2__ dev; TYPE_1__ config; struct tb* tb; } ;
struct tb {int index; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct tb_switch* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int dev_set_name (TYPE_2__*,char*,int ,int ) ;
 int device_initialize (TYPE_2__*) ;
 struct tb_switch* kzalloc (int,int ) ;
 int lower_32_bits (int ) ;
 int switch_groups ;
 int tb_bus_type ;
 int tb_route (struct tb_switch*) ;
 int tb_route_length (int ) ;
 int tb_switch_type ;
 int upper_32_bits (int ) ;

struct tb_switch *
tb_switch_alloc_safe_mode(struct tb *tb, struct device *parent, u64 route)
{
 struct tb_switch *sw;

 sw = kzalloc(sizeof(*sw), GFP_KERNEL);
 if (!sw)
  return ERR_PTR(-ENOMEM);

 sw->tb = tb;
 sw->config.depth = tb_route_length(route);
 sw->config.route_hi = upper_32_bits(route);
 sw->config.route_lo = lower_32_bits(route);
 sw->safe_mode = 1;

 device_initialize(&sw->dev);
 sw->dev.parent = parent;
 sw->dev.bus = &tb_bus_type;
 sw->dev.type = &tb_switch_type;
 sw->dev.groups = switch_groups;
 dev_set_name(&sw->dev, "%u-%llx", tb->index, tb_route(sw));

 return sw;
}
