
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gab_platform_data {int jitter_delay; } ;
struct gab {int bat_work; struct gab_platform_data* pdata; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int JITTER_DEFAULT ;
 int msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static irqreturn_t gab_charged(int irq, void *dev_id)
{
 struct gab *adc_bat = dev_id;
 struct gab_platform_data *pdata = adc_bat->pdata;
 int delay;

 delay = pdata->jitter_delay ? pdata->jitter_delay : JITTER_DEFAULT;
 schedule_delayed_work(&adc_bat->bat_work,
   msecs_to_jiffies(delay));
 return IRQ_HANDLED;
}
