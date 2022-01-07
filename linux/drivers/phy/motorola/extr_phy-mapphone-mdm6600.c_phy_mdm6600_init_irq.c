
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_mdm6600 {TYPE_1__* status_gpios; struct device* dev; } ;
struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct gpio_desc** desc; } ;


 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 int PHY_MDM6600_STATUS0 ;
 int PHY_MDM6600_STATUS2 ;
 int dev_warn (struct device*,char*,int,int) ;
 int devm_request_threaded_irq (struct device*,int,int *,int ,int,char*,struct phy_mdm6600*) ;
 int gpiod_to_irq (struct gpio_desc*) ;
 int phy_mdm6600_irq_thread ;

__attribute__((used)) static void phy_mdm6600_init_irq(struct phy_mdm6600 *ddata)
{
 struct device *dev = ddata->dev;
 int i, error, irq;

 for (i = PHY_MDM6600_STATUS0;
      i <= PHY_MDM6600_STATUS2; i++) {
  struct gpio_desc *gpio = ddata->status_gpios->desc[i];

  irq = gpiod_to_irq(gpio);
  if (irq <= 0)
   continue;

  error = devm_request_threaded_irq(dev, irq, ((void*)0),
     phy_mdm6600_irq_thread,
     IRQF_TRIGGER_RISING |
     IRQF_TRIGGER_FALLING |
     IRQF_ONESHOT,
     "mdm6600",
     ddata);
  if (error)
   dev_warn(dev, "no modem status irq%i: %i\n",
     irq, error);
 }
}
