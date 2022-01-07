
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp8788_charger_platform_data {int adc_batt_temp; int adc_vbatt; } ;
struct lp8788_charger {struct iio_channel** chan; struct lp8788_charger_platform_data* pdata; } ;
struct iio_channel {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (struct iio_channel*) ;
 size_t LP8788_BATT_TEMP ;
 size_t LP8788_VBATT ;
 struct iio_channel* iio_channel_get (struct device*,int ) ;

__attribute__((used)) static void lp8788_setup_adc_channel(struct device *dev,
    struct lp8788_charger *pchg)
{
 struct lp8788_charger_platform_data *pdata = pchg->pdata;
 struct iio_channel *chan;

 if (!pdata)
  return;


 chan = iio_channel_get(dev, pdata->adc_vbatt);
 pchg->chan[LP8788_VBATT] = IS_ERR(chan) ? ((void*)0) : chan;


 chan = iio_channel_get(dev, pdata->adc_batt_temp);
 pchg->chan[LP8788_BATT_TEMP] = IS_ERR(chan) ? ((void*)0) : chan;
}
