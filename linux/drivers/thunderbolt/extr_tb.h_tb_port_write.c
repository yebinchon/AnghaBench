
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tb_port {int port; TYPE_2__* sw; } ;
typedef enum tb_cfg_space { ____Placeholder_tb_cfg_space } tb_cfg_space ;
struct TYPE_4__ {TYPE_1__* tb; scalar_t__ is_unplugged; } ;
struct TYPE_3__ {int ctl; } ;


 int ENODEV ;
 int tb_cfg_write (int ,void const*,int ,int ,int,int ,int ) ;
 int tb_route (TYPE_2__*) ;

__attribute__((used)) static inline int tb_port_write(struct tb_port *port, const void *buffer,
    enum tb_cfg_space space, u32 offset, u32 length)
{
 if (port->sw->is_unplugged)
  return -ENODEV;
 return tb_cfg_write(port->sw->tb->ctl,
       buffer,
       tb_route(port->sw),
       port->port,
       space,
       offset,
       length);
}
