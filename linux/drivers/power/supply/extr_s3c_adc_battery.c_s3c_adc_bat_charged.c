
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int JITTER_DELAY ;
 int bat_work ;
 int msecs_to_jiffies (int ) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static irqreturn_t s3c_adc_bat_charged(int irq, void *dev_id)
{
 schedule_delayed_work(&bat_work,
  msecs_to_jiffies(JITTER_DELAY));
 return IRQ_HANDLED;
}
