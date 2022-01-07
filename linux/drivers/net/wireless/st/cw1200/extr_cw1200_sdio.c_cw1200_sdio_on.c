
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cw1200_platform_data_sdio {scalar_t__ reset; scalar_t__ powerup; scalar_t__ (* clk_ctrl ) (struct cw1200_platform_data_sdio const*,int) ;scalar_t__ (* power_ctrl ) (struct cw1200_platform_data_sdio const*,int) ;} ;


 int gpio_direction_output (scalar_t__,int ) ;
 int gpio_request (scalar_t__,char*) ;
 int gpio_set_value (scalar_t__,int) ;
 int msleep (int) ;
 int pr_err (char*) ;
 scalar_t__ stub1 (struct cw1200_platform_data_sdio const*,int) ;
 scalar_t__ stub2 (struct cw1200_platform_data_sdio const*,int) ;

__attribute__((used)) static int cw1200_sdio_on(const struct cw1200_platform_data_sdio *pdata)
{

 if (pdata->reset) {
  gpio_request(pdata->reset, "cw1200_wlan_reset");
  gpio_direction_output(pdata->reset, 0);
 }
 if (pdata->powerup) {
  gpio_request(pdata->powerup, "cw1200_wlan_powerup");
  gpio_direction_output(pdata->powerup, 0);
 }
 if (pdata->reset || pdata->powerup)
  msleep(10);


 if (pdata->power_ctrl) {
  if (pdata->power_ctrl(pdata, 1)) {
   pr_err("power_ctrl() failed!\n");
   return -1;
  }
 }


 if (pdata->clk_ctrl) {
  if (pdata->clk_ctrl(pdata, 1)) {
   pr_err("clk_ctrl() failed!\n");
   return -1;
  }
  msleep(10);
 }


 if (pdata->powerup) {
  gpio_set_value(pdata->powerup, 1);
  msleep(250);
 }

 if (pdata->reset) {
  gpio_set_value(pdata->reset, 1);
  msleep(50);
 }
 return 0;
}
