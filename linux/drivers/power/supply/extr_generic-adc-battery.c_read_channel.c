
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gab {int * channel; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int gab_prop_to_chan (int) ;
 int iio_read_channel_processed (int ,int*) ;
 int pr_err (char*) ;

__attribute__((used)) static int read_channel(struct gab *adc_bat, enum power_supply_property psp,
  int *result)
{
 int ret;
 int chan_index;

 chan_index = gab_prop_to_chan(psp);
 ret = iio_read_channel_processed(adc_bat->channel[chan_index],
   result);
 if (ret < 0)
  pr_err("read channel error\n");
 return ret;
}
