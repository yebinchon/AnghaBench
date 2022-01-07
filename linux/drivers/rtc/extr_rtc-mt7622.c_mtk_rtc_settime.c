
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_year; } ;
struct mtk_rtc {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int MTK_RTC_CTL ;
 int MTK_RTC_TM_YR_VALID (int ) ;
 int MTK_TC ;
 int RTC_RC_STOP ;
 struct mtk_rtc* dev_get_drvdata (struct device*) ;
 int mtk_clr (struct mtk_rtc*,int ,int ) ;
 int mtk_rtc_set_alarm_or_time (struct mtk_rtc*,struct rtc_time*,int ) ;
 int mtk_set (struct mtk_rtc*,int ,int ) ;

__attribute__((used)) static int mtk_rtc_settime(struct device *dev, struct rtc_time *tm)
{
 struct mtk_rtc *hw = dev_get_drvdata(dev);

 if (!MTK_RTC_TM_YR_VALID(tm->tm_year))
  return -EINVAL;


 mtk_set(hw, MTK_RTC_CTL, RTC_RC_STOP);

 mtk_rtc_set_alarm_or_time(hw, tm, MTK_TC);


 mtk_clr(hw, MTK_RTC_CTL, RTC_RC_STOP);

 return 0;
}
