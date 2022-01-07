
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct gab_platform_data {int gpio_charge_finished; } ;
struct TYPE_2__ {int properties; } ;
struct gab {int bat_work; TYPE_1__ psy_desc; scalar_t__* channel; int psy; struct gab_platform_data* pdata; } ;


 int ARRAY_SIZE (int ) ;
 int cancel_delayed_work (int *) ;
 int free_irq (int ,struct gab*) ;
 int gab_chan_name ;
 int gpio_free (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_to_irq (int ) ;
 int iio_channel_release (scalar_t__) ;
 int kfree (int ) ;
 struct gab* platform_get_drvdata (struct platform_device*) ;
 int power_supply_unregister (int ) ;

__attribute__((used)) static int gab_remove(struct platform_device *pdev)
{
 int chan;
 struct gab *adc_bat = platform_get_drvdata(pdev);
 struct gab_platform_data *pdata = adc_bat->pdata;

 power_supply_unregister(adc_bat->psy);

 if (gpio_is_valid(pdata->gpio_charge_finished)) {
  free_irq(gpio_to_irq(pdata->gpio_charge_finished), adc_bat);
  gpio_free(pdata->gpio_charge_finished);
 }

 for (chan = 0; chan < ARRAY_SIZE(gab_chan_name); chan++) {
  if (adc_bat->channel[chan])
   iio_channel_release(adc_bat->channel[chan]);
 }

 kfree(adc_bat->psy_desc.properties);
 cancel_delayed_work(&adc_bat->bat_work);
 return 0;
}
