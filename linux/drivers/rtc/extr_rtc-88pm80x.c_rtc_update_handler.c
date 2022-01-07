
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm80x_rtc_info {int rtc_dev; int map; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int PM800_ALARM ;
 int PM800_ALARM1_EN ;
 int PM800_ALARM_WAKEUP ;
 int PM800_RTC_CONTROL ;
 int RTC_AF ;
 int regmap_update_bits (int ,int ,int,int) ;
 int rtc_update_irq (int ,int,int ) ;

__attribute__((used)) static irqreturn_t rtc_update_handler(int irq, void *data)
{
 struct pm80x_rtc_info *info = (struct pm80x_rtc_info *)data;
 int mask;

 mask = PM800_ALARM | PM800_ALARM_WAKEUP;
 regmap_update_bits(info->map, PM800_RTC_CONTROL, mask | PM800_ALARM1_EN,
      mask);
 rtc_update_irq(info->rtc_dev, 1, RTC_AF);
 return IRQ_HANDLED;
}
