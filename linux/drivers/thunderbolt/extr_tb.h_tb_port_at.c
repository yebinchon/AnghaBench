
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u64 ;
struct TYPE_2__ {int depth; size_t max_port_number; } ;
struct tb_switch {struct tb_port* ports; TYPE_1__ config; } ;
struct tb_port {int dummy; } ;


 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static inline struct tb_port *tb_port_at(u64 route, struct tb_switch *sw)
{
 u8 port;

 port = route >> (sw->config.depth * 8);
 if (WARN_ON(port > sw->config.max_port_number))
  return ((void*)0);
 return &sw->ports[port];
}
