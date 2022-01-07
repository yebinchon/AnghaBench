
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ enabled; } ;
struct tb_switch {int generation; int dma_port; scalar_t__ no_nvm_upgrade; TYPE_1__ config; int safe_mode; } ;


 int ESHUTDOWN ;
 int dma_port_alloc (struct tb_switch*) ;
 int dma_port_flash_update_auth_status (int ,scalar_t__*) ;
 int dma_port_power_cycle (int ) ;
 int nvm_authenticate_complete (struct tb_switch*) ;
 int nvm_set_auth_status (struct tb_switch*,scalar_t__) ;
 scalar_t__ tb_route (struct tb_switch*) ;
 int tb_sw_info (struct tb_switch*,char*) ;
 int tb_switch_set_uuid (struct tb_switch*) ;

__attribute__((used)) static int tb_switch_add_dma_port(struct tb_switch *sw)
{
 u32 status;
 int ret;

 switch (sw->generation) {
 case 3:
  break;

 case 2:

  if (tb_route(sw))
   return 0;
  break;

 default:




  if (!sw->safe_mode)
   return 0;
  break;
 }


 if (!tb_route(sw) && sw->config.enabled)
  return 0;

 sw->dma_port = dma_port_alloc(sw);
 if (!sw->dma_port)
  return 0;

 if (sw->no_nvm_upgrade)
  return 0;






 ret = dma_port_flash_update_auth_status(sw->dma_port, &status);
 if (ret <= 0)
  return ret;


 if (!tb_route(sw))
  nvm_authenticate_complete(sw);

 if (status) {
  tb_sw_info(sw, "switch flash authentication failed\n");
  ret = tb_switch_set_uuid(sw);
  if (ret)
   return ret;
  nvm_set_auth_status(sw, status);
 }

 tb_sw_info(sw, "power cycling the switch now\n");
 dma_port_power_cycle(sw->dma_port);





 return -ESHUTDOWN;
}
