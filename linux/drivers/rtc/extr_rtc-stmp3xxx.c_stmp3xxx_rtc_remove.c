
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmp3xxx_rtc_data {scalar_t__ io; } ;
struct platform_device {int dummy; } ;


 scalar_t__ STMP3XXX_RTC_CTRL ;
 int STMP3XXX_RTC_CTRL_ALARM_IRQ_EN ;
 scalar_t__ STMP_OFFSET_REG_CLR ;
 struct stmp3xxx_rtc_data* platform_get_drvdata (struct platform_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int stmp3xxx_rtc_remove(struct platform_device *pdev)
{
 struct stmp3xxx_rtc_data *rtc_data = platform_get_drvdata(pdev);

 if (!rtc_data)
  return 0;

 writel(STMP3XXX_RTC_CTRL_ALARM_IRQ_EN,
  rtc_data->io + STMP3XXX_RTC_CTRL + STMP_OFFSET_REG_CLR);

 return 0;
}
