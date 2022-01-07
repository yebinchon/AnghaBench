
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_mdm6600 {int enabled; scalar_t__ status; int dev; int ack; struct gpio_desc** ctrl_gpios; } ;
struct gpio_desc {int dummy; } ;


 int PHY_MDM6600_CMD_BP_SHUTDOWN_REQ ;
 size_t PHY_MDM6600_RESET ;
 scalar_t__ PHY_MDM6600_STATUS_PANIC ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int gpiod_set_value_cansleep (struct gpio_desc*,int) ;
 int msecs_to_jiffies (int) ;
 int msleep (int) ;
 int phy_mdm6600_cmd (struct phy_mdm6600*,int ) ;
 scalar_t__ wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void phy_mdm6600_device_power_off(struct phy_mdm6600 *ddata)
{
 struct gpio_desc *reset_gpio =
  ddata->ctrl_gpios[PHY_MDM6600_RESET];

 ddata->enabled = 0;
 phy_mdm6600_cmd(ddata, PHY_MDM6600_CMD_BP_SHUTDOWN_REQ);
 msleep(100);

 gpiod_set_value_cansleep(reset_gpio, 1);

 dev_info(ddata->dev, "Waiting for power down request to complete.. ");
 if (wait_for_completion_timeout(&ddata->ack,
     msecs_to_jiffies(5000))) {
  if (ddata->status == PHY_MDM6600_STATUS_PANIC)
   dev_info(ddata->dev, "Powered down OK\n");
 } else {
  dev_err(ddata->dev, "Timed out powering down\n");
 }
}
