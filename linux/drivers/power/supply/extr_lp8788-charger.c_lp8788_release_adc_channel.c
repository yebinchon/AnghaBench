
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp8788_charger {int ** chan; } ;


 int LP8788_NUM_CHG_ADC ;
 int iio_channel_release (int *) ;

__attribute__((used)) static void lp8788_release_adc_channel(struct lp8788_charger *pchg)
{
 int i;

 for (i = 0; i < LP8788_NUM_CHG_ADC; i++) {
  if (!pchg->chan[i])
   continue;

  iio_channel_release(pchg->chan[i]);
  pchg->chan[i] = ((void*)0);
 }
}
