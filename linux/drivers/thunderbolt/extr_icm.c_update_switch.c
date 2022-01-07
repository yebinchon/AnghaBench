
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
typedef int u64 ;
struct TYPE_3__ {int route_lo; int route_hi; } ;
struct tb_switch {int boot; int is_unplugged; int rpm_complete; void* depth; void* link; void* connection_key; void* connection_id; TYPE_1__ config; } ;
struct TYPE_4__ {int * remote; } ;


 int complete (int *) ;
 int lower_32_bits (int ) ;
 TYPE_2__* tb_port_at (int ,struct tb_switch*) ;
 int tb_route (struct tb_switch*) ;
 int * tb_upstream_port (struct tb_switch*) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void update_switch(struct tb_switch *parent_sw, struct tb_switch *sw,
     u64 route, u8 connection_id, u8 connection_key,
     u8 link, u8 depth, bool boot)
{

 tb_port_at(tb_route(sw), parent_sw)->remote = ((void*)0);

 tb_port_at(route, parent_sw)->remote = tb_upstream_port(sw);


 sw->config.route_hi = upper_32_bits(route);
 sw->config.route_lo = lower_32_bits(route);
 sw->connection_id = connection_id;
 sw->connection_key = connection_key;
 sw->link = link;
 sw->depth = depth;
 sw->boot = boot;


 sw->is_unplugged = 0;


 complete(&sw->rpm_complete);
}
