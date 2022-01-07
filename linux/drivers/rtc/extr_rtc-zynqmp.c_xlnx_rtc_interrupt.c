
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlnx_rtc_dev {int rtc; scalar_t__ reg_base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RTC_AF ;
 unsigned int RTC_INT_ALRM ;
 unsigned int RTC_INT_SEC ;
 scalar_t__ RTC_INT_STS ;
 int RTC_IRQF ;
 unsigned int readl (scalar_t__) ;
 int rtc_update_irq (int ,int,int) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static irqreturn_t xlnx_rtc_interrupt(int irq, void *id)
{
 struct xlnx_rtc_dev *xrtcdev = (struct xlnx_rtc_dev *)id;
 unsigned int status;

 status = readl(xrtcdev->reg_base + RTC_INT_STS);

 if (!(status & (RTC_INT_SEC | RTC_INT_ALRM)))
  return IRQ_NONE;


 writel(RTC_INT_ALRM, xrtcdev->reg_base + RTC_INT_STS);

 if (status & RTC_INT_ALRM)
  rtc_update_irq(xrtcdev->rtc, 1, RTC_IRQF | RTC_AF);

 return IRQ_HANDLED;
}
