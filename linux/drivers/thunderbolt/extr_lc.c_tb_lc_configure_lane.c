
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tb_switch {int generation; } ;
struct tb_port {int port; struct tb_switch* sw; } ;


 int TB_CFG_SWITCH ;
 scalar_t__ TB_LC_SX_CTRL ;
 int TB_LC_SX_CTRL_L1C ;
 int TB_LC_SX_CTRL_L2C ;
 int TB_LC_SX_CTRL_UPSTREAM ;
 int find_port_lc_cap (struct tb_port*) ;
 int tb_is_upstream_port (struct tb_port*) ;
 int tb_sw_read (struct tb_switch*,int *,int ,scalar_t__,int) ;
 int tb_sw_write (struct tb_switch*,int *,int ,scalar_t__,int) ;

__attribute__((used)) static int tb_lc_configure_lane(struct tb_port *port, bool configure)
{
 bool upstream = tb_is_upstream_port(port);
 struct tb_switch *sw = port->sw;
 u32 ctrl, lane;
 int cap, ret;

 if (sw->generation < 2)
  return 0;

 cap = find_port_lc_cap(port);
 if (cap < 0)
  return cap;

 ret = tb_sw_read(sw, &ctrl, TB_CFG_SWITCH, cap + TB_LC_SX_CTRL, 1);
 if (ret)
  return ret;


 if (port->port % 2)
  lane = TB_LC_SX_CTRL_L1C;
 else
  lane = TB_LC_SX_CTRL_L2C;

 if (configure) {
  ctrl |= lane;
  if (upstream)
   ctrl |= TB_LC_SX_CTRL_UPSTREAM;
 } else {
  ctrl &= ~lane;
  if (upstream)
   ctrl &= ~TB_LC_SX_CTRL_UPSTREAM;
 }

 return tb_sw_write(sw, &ctrl, TB_CFG_SWITCH, cap + TB_LC_SX_CTRL, 1);
}
