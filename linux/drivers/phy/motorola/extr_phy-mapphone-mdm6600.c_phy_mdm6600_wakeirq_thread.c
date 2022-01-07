
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_mdm6600 {int dev; TYPE_1__* mode_gpios; } ;
struct gpio_desc {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct gpio_desc** desc; } ;


 int IRQ_HANDLED ;
 size_t PHY_MDM6600_MODE1 ;
 int dev_dbg (int ,char*,int ) ;
 int gpiod_get_value (struct gpio_desc*) ;

__attribute__((used)) static irqreturn_t phy_mdm6600_wakeirq_thread(int irq, void *data)
{
 struct phy_mdm6600 *ddata = data;
 struct gpio_desc *mode_gpio1;

 mode_gpio1 = ddata->mode_gpios->desc[PHY_MDM6600_MODE1];
 dev_dbg(ddata->dev, "OOB wake on mode_gpio1: %i\n",
  gpiod_get_value(mode_gpio1));

 return IRQ_HANDLED;
}
