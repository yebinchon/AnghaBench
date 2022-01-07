
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; } ;
struct tb_port {scalar_t__ port; int cap_phy; int cap_adap; int out_hopids; int in_hopids; TYPE_2__ config; TYPE_1__* sw; } ;
struct TYPE_4__ {int tb; } ;


 int ENODEV ;
 int TB_CFG_PORT ;
 int TB_PORT_CAP_ADAP ;
 int TB_PORT_CAP_PHY ;
 scalar_t__ TB_TYPE_PORT ;
 int ida_init (int *) ;
 int tb_dbg (int ,char*,scalar_t__) ;
 int tb_dump_port (int ,TYPE_2__*) ;
 int tb_port_WARN (struct tb_port*,char*) ;
 int tb_port_find_cap (struct tb_port*,int ) ;
 int tb_port_read (struct tb_port*,TYPE_2__*,int ,int ,int) ;

__attribute__((used)) static int tb_init_port(struct tb_port *port)
{
 int res;
 int cap;

 res = tb_port_read(port, &port->config, TB_CFG_PORT, 0, 8);
 if (res) {
  if (res == -ENODEV) {
   tb_dbg(port->sw->tb, " Port %d: not implemented\n",
          port->port);
   return 0;
  }
  return res;
 }


 if (port->config.type == TB_TYPE_PORT && port->port != 0) {
  cap = tb_port_find_cap(port, TB_PORT_CAP_PHY);

  if (cap > 0)
   port->cap_phy = cap;
  else
   tb_port_WARN(port, "non switch port without a PHY\n");
 } else if (port->port != 0) {
  cap = tb_port_find_cap(port, TB_PORT_CAP_ADAP);
  if (cap > 0)
   port->cap_adap = cap;
 }

 tb_dump_port(port->sw->tb, &port->config);


 if (port->port) {
  ida_init(&port->in_hopids);
  ida_init(&port->out_hopids);
 }

 return 0;

}
