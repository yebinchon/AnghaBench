
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max8903_pdata {int cen; int uok; } ;
struct TYPE_2__ {int type; } ;
struct max8903_data {int usb_in; int psy; TYPE_1__ psy_desc; scalar_t__ ta_in; int dev; struct max8903_pdata* pdata; } ;
typedef int irqreturn_t ;
typedef enum power_supply_type { ____Placeholder_power_supply_type } power_supply_type ;


 int IRQ_HANDLED ;
 int POWER_SUPPLY_TYPE_BATTERY ;
 int POWER_SUPPLY_TYPE_MAINS ;
 int POWER_SUPPLY_TYPE_USB ;
 int dev_dbg (int ,char*,char*) ;
 scalar_t__ gpio_get_value (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;
 int power_supply_changed (int ) ;

__attribute__((used)) static irqreturn_t max8903_usbin(int irq, void *_data)
{
 struct max8903_data *data = _data;
 struct max8903_pdata *pdata = data->pdata;
 bool usb_in;
 enum power_supply_type old_type;

 usb_in = gpio_get_value(pdata->uok) ? 0 : 1;

 if (usb_in == data->usb_in)
  return IRQ_HANDLED;

 data->usb_in = usb_in;




 if (gpio_is_valid(pdata->cen))
  gpio_set_value(pdata->cen, usb_in ? 0 :
    (data->ta_in ? 0 : 1));

 dev_dbg(data->dev, "USB Charger %s.\n", usb_in ?
   "Connected" : "Disconnected");

 old_type = data->psy_desc.type;

 if (data->ta_in)
  data->psy_desc.type = POWER_SUPPLY_TYPE_MAINS;
 else if (data->usb_in)
  data->psy_desc.type = POWER_SUPPLY_TYPE_USB;
 else
  data->psy_desc.type = POWER_SUPPLY_TYPE_BATTERY;

 if (old_type != data->psy_desc.type)
  power_supply_changed(data->psy);

 return IRQ_HANDLED;
}
