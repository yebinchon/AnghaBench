
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_switch {int dma_port; int tb; int safe_mode; } ;


 int ETIMEDOUT ;
 int dma_port_flash_update_auth (int ) ;
 int dma_port_power_cycle (int ) ;
 int tb_domain_disconnect_all_paths (int ) ;

__attribute__((used)) static int nvm_authenticate_host(struct tb_switch *sw)
{
 int ret;






 if (!sw->safe_mode) {
  ret = tb_domain_disconnect_all_paths(sw->tb);
  if (ret)
   return ret;




  ret = dma_port_flash_update_auth(sw->dma_port);
  return ret == -ETIMEDOUT ? 0 : ret;
 }





 dma_port_power_cycle(sw->dma_port);
 return 0;
}
