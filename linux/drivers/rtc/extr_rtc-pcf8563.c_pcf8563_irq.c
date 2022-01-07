
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf8563 {int client; int rtc; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RTC_AF ;
 int RTC_IRQF ;
 struct pcf8563* i2c_get_clientdata (void*) ;
 int pcf8563_get_alarm_mode (int ,int *,char*) ;
 int pcf8563_set_alarm_mode (int ,int) ;
 int rtc_update_irq (int ,int,int) ;

__attribute__((used)) static irqreturn_t pcf8563_irq(int irq, void *dev_id)
{
 struct pcf8563 *pcf8563 = i2c_get_clientdata(dev_id);
 int err;
 char pending;

 err = pcf8563_get_alarm_mode(pcf8563->client, ((void*)0), &pending);
 if (err)
  return IRQ_NONE;

 if (pending) {
  rtc_update_irq(pcf8563->rtc, 1, RTC_IRQF | RTC_AF);
  pcf8563_set_alarm_mode(pcf8563->client, 1);
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
