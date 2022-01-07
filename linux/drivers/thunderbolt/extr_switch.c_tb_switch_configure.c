
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ vendor_id; int enabled; int upstream_port_number; } ;
struct tb_switch {TYPE_1__ config; struct tb* tb; } ;
struct tb {int dummy; } ;


 scalar_t__ PCI_VENDOR_ID_INTEL ;
 int TB_CFG_SWITCH ;
 int tb_dbg (struct tb*,char*,int ,int ,int ) ;
 int tb_lc_configure_link (struct tb_switch*) ;
 int tb_plug_events_active (struct tb_switch*,int) ;
 int tb_route (struct tb_switch*) ;
 int tb_route_length (int ) ;
 int tb_sw_warn (struct tb_switch*,char*,scalar_t__) ;
 int tb_sw_write (struct tb_switch*,int *,int ,int,int) ;

int tb_switch_configure(struct tb_switch *sw)
{
 struct tb *tb = sw->tb;
 u64 route;
 int ret;

 route = tb_route(sw);
 tb_dbg(tb, "initializing Switch at %#llx (depth: %d, up port: %d)\n",
        route, tb_route_length(route), sw->config.upstream_port_number);

 if (sw->config.vendor_id != PCI_VENDOR_ID_INTEL)
  tb_sw_warn(sw, "unknown switch vendor id %#x\n",
      sw->config.vendor_id);

 sw->config.enabled = 1;


 ret = tb_sw_write(sw, 1 + (u32 *)&sw->config, TB_CFG_SWITCH, 1, 3);
 if (ret)
  return ret;

 ret = tb_lc_configure_link(sw);
 if (ret)
  return ret;

 return tb_plug_events_active(sw, 1);
}
