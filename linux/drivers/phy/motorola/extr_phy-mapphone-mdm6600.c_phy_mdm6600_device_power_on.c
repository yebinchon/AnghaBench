
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_mdm6600 {int enabled; scalar_t__ status; int running; int dev; int ack; struct gpio_desc** ctrl_gpios; TYPE_1__* mode_gpios; } ;
struct gpio_desc {int dummy; } ;
struct TYPE_2__ {struct gpio_desc** desc; } ;


 int ETIMEDOUT ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 int PHY_MDM6600_CMD_NO_BYPASS ;
 int PHY_MDM6600_ENABLED_DELAY_MS ;
 size_t PHY_MDM6600_MODE0 ;
 size_t PHY_MDM6600_MODE1 ;
 int PHY_MDM6600_PHY_DELAY_MS ;
 size_t PHY_MDM6600_POWER ;
 size_t PHY_MDM6600_RESET ;
 scalar_t__ PHY_MDM6600_STATUS_PANIC ;
 scalar_t__ PHY_MDM6600_STATUS_SHUTDOWN_ACK ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int dev_warn (int ,char*,int,int) ;
 int devm_request_threaded_irq (int ,int,int *,int ,int,char*,struct phy_mdm6600*) ;
 int gpiod_direction_input (struct gpio_desc*) ;
 int gpiod_set_value_cansleep (struct gpio_desc*,int) ;
 int gpiod_to_irq (struct gpio_desc*) ;
 int msecs_to_jiffies (int ) ;
 int msleep (int) ;
 int phy_mdm6600_cmd (struct phy_mdm6600*,int ) ;
 int phy_mdm6600_wakeirq_thread ;
 scalar_t__ wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int phy_mdm6600_device_power_on(struct phy_mdm6600 *ddata)
{
 struct gpio_desc *mode_gpio0, *mode_gpio1, *reset_gpio, *power_gpio;
 int error = 0, wakeirq;

 mode_gpio0 = ddata->mode_gpios->desc[PHY_MDM6600_MODE0];
 mode_gpio1 = ddata->mode_gpios->desc[PHY_MDM6600_MODE1];
 reset_gpio = ddata->ctrl_gpios[PHY_MDM6600_RESET];
 power_gpio = ddata->ctrl_gpios[PHY_MDM6600_POWER];







 gpiod_set_value_cansleep(mode_gpio0, 0);
 gpiod_set_value_cansleep(mode_gpio1, 0);


 phy_mdm6600_cmd(ddata, PHY_MDM6600_CMD_NO_BYPASS);


 gpiod_set_value_cansleep(reset_gpio, 0);
 msleep(100);


 gpiod_set_value_cansleep(power_gpio, 1);
 msleep(100);
 gpiod_set_value_cansleep(power_gpio, 0);







 msleep(PHY_MDM6600_PHY_DELAY_MS);
 ddata->enabled = 1;


 dev_info(ddata->dev, "Waiting for power up request to complete..\n");
 if (wait_for_completion_timeout(&ddata->ack,
   msecs_to_jiffies(PHY_MDM6600_ENABLED_DELAY_MS))) {
  if (ddata->status > PHY_MDM6600_STATUS_PANIC &&
      ddata->status < PHY_MDM6600_STATUS_SHUTDOWN_ACK)
   dev_info(ddata->dev, "Powered up OK\n");
 } else {
  ddata->enabled = 0;
  error = -ETIMEDOUT;
  dev_err(ddata->dev, "Timed out powering up\n");
 }


 gpiod_direction_input(mode_gpio1);

 wakeirq = gpiod_to_irq(mode_gpio1);
 if (wakeirq <= 0)
  return wakeirq;

 error = devm_request_threaded_irq(ddata->dev, wakeirq, ((void*)0),
       phy_mdm6600_wakeirq_thread,
       IRQF_TRIGGER_RISING |
       IRQF_TRIGGER_FALLING |
       IRQF_ONESHOT,
       "mdm6600-wake",
       ddata);
 if (error)
  dev_warn(ddata->dev, "no modem wakeirq irq%i: %i\n",
    wakeirq, error);

 ddata->running = 1;

 return error;
}
