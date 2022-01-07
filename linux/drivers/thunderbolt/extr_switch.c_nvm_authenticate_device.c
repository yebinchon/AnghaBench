
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tb_switch {int dma_port; } ;


 int ETIMEDOUT ;
 int dma_port_flash_update_auth (int ) ;
 int dma_port_flash_update_auth_status (int ,scalar_t__*) ;
 int dma_port_power_cycle (int ) ;
 int msleep (int) ;
 int nvm_set_auth_status (struct tb_switch*,scalar_t__) ;
 int tb_sw_info (struct tb_switch*,char*) ;
 int tb_sw_warn (struct tb_switch*,char*) ;

__attribute__((used)) static int nvm_authenticate_device(struct tb_switch *sw)
{
 int ret, retries = 10;

 ret = dma_port_flash_update_auth(sw->dma_port);
 if (ret && ret != -ETIMEDOUT)
  return ret;







 do {
  u32 status;

  ret = dma_port_flash_update_auth_status(sw->dma_port, &status);
  if (ret < 0 && ret != -ETIMEDOUT)
   return ret;
  if (ret > 0) {
   if (status) {
    tb_sw_warn(sw, "failed to authenticate NVM\n");
    nvm_set_auth_status(sw, status);
   }

   tb_sw_info(sw, "power cycling the switch now\n");
   dma_port_power_cycle(sw->dma_port);
   return 0;
  }

  msleep(500);
 } while (--retries);

 return -ETIMEDOUT;
}
