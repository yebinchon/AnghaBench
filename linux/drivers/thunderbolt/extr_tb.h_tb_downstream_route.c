
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct tb_port {TYPE_2__* sw; scalar_t__ port; } ;
struct TYPE_3__ {int depth; } ;
struct TYPE_4__ {TYPE_1__ config; } ;


 int tb_route (TYPE_2__*) ;

__attribute__((used)) static inline u64 tb_downstream_route(struct tb_port *port)
{
 return tb_route(port->sw)
        | ((u64) port->port << (port->sw->config.depth * 8));
}
