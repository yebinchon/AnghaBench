
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_port {scalar_t__ cap_phy; } ;
struct tb_cap_phy {int state; } ;


 int EINVAL ;
 int TB_CFG_PORT ;
 int tb_port_WARN (struct tb_port*,char*) ;
 int tb_port_read (struct tb_port*,struct tb_cap_phy*,int ,scalar_t__,int) ;

__attribute__((used)) static int tb_port_state(struct tb_port *port)
{
 struct tb_cap_phy phy;
 int res;
 if (port->cap_phy == 0) {
  tb_port_WARN(port, "does not have a PHY\n");
  return -EINVAL;
 }
 res = tb_port_read(port, &phy, TB_CFG_PORT, port->cap_phy, 2);
 if (res)
  return res;
 return phy.state;
}
