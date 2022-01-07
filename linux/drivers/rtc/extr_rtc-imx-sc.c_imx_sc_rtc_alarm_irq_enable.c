
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int SC_IRQ_GROUP_RTC ;
 int SC_IRQ_RTC ;
 int imx_scu_irq_group_enable (int ,int ,unsigned int) ;

__attribute__((used)) static int imx_sc_rtc_alarm_irq_enable(struct device *dev, unsigned int enable)
{
 return imx_scu_irq_group_enable(SC_IRQ_GROUP_RTC, SC_IRQ_RTC, enable);
}
