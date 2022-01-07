
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct phy_mdm6600 {int status_work; int bootup_work; int modem_wake_work; int ack; int running; int dev; struct gpio_desc** ctrl_gpios; } ;
struct gpio_desc {int dummy; } ;


 int PHY_MDM6600_ENABLED_DELAY_MS ;
 size_t PHY_MDM6600_RESET ;
 int cancel_delayed_work_sync (int *) ;
 int gpiod_set_value_cansleep (struct gpio_desc*,int) ;
 int msecs_to_jiffies (int ) ;
 int phy_mdm6600_device_power_off (struct phy_mdm6600*) ;
 struct phy_mdm6600* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_dont_use_autosuspend (int ) ;
 int pm_runtime_put_sync (int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int phy_mdm6600_remove(struct platform_device *pdev)
{
 struct phy_mdm6600 *ddata = platform_get_drvdata(pdev);
 struct gpio_desc *reset_gpio = ddata->ctrl_gpios[PHY_MDM6600_RESET];

 pm_runtime_dont_use_autosuspend(ddata->dev);
 pm_runtime_put_sync(ddata->dev);
 pm_runtime_disable(ddata->dev);

 if (!ddata->running)
  wait_for_completion_timeout(&ddata->ack,
   msecs_to_jiffies(PHY_MDM6600_ENABLED_DELAY_MS));

 gpiod_set_value_cansleep(reset_gpio, 1);
 phy_mdm6600_device_power_off(ddata);

 cancel_delayed_work_sync(&ddata->modem_wake_work);
 cancel_delayed_work_sync(&ddata->bootup_work);
 cancel_delayed_work_sync(&ddata->status_work);

 return 0;
}
