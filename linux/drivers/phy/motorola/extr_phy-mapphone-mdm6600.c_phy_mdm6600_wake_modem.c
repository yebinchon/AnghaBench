
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_mdm6600 {scalar_t__ awake; TYPE_1__* mode_gpios; } ;
struct gpio_desc {int dummy; } ;
struct TYPE_2__ {struct gpio_desc** desc; } ;


 int MDM6600_MODEM_WAKE_DELAY_MS ;
 size_t PHY_MDM6600_MODE0 ;
 int gpiod_set_value_cansleep (struct gpio_desc*,int) ;
 int msleep (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void phy_mdm6600_wake_modem(struct phy_mdm6600 *ddata)
{
 struct gpio_desc *mode_gpio0;

 mode_gpio0 = ddata->mode_gpios->desc[PHY_MDM6600_MODE0];
 gpiod_set_value_cansleep(mode_gpio0, 1);
 usleep_range(5, 15);
 gpiod_set_value_cansleep(mode_gpio0, 0);
 if (ddata->awake)
  usleep_range(5, 15);
 else
  msleep(MDM6600_MODEM_WAKE_DELAY_MS);
}
