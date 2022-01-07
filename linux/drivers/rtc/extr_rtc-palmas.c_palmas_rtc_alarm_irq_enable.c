
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct palmas {int dummy; } ;
struct device {int parent; } ;


 int PALMAS_RTC_BASE ;
 int PALMAS_RTC_INTERRUPTS_REG ;
 int PALMAS_RTC_INTERRUPTS_REG_IT_ALARM ;
 struct palmas* dev_get_drvdata (int ) ;
 int palmas_write (struct palmas*,int ,int ,int ) ;

__attribute__((used)) static int palmas_rtc_alarm_irq_enable(struct device *dev, unsigned enabled)
{
 struct palmas *palmas = dev_get_drvdata(dev->parent);
 u8 val;

 val = enabled ? PALMAS_RTC_INTERRUPTS_REG_IT_ALARM : 0;
 return palmas_write(palmas, PALMAS_RTC_BASE,
  PALMAS_RTC_INTERRUPTS_REG, val);
}
