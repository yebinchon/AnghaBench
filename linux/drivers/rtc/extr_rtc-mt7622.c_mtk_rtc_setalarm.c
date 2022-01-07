
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_year; } ;
struct rtc_wkalrm {struct rtc_time time; } ;
struct mtk_rtc {int irq; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int MTK_AL ;
 int MTK_RTC_AL_CTL ;
 int MTK_RTC_TM_YR_VALID (int ) ;
 int RTC_AL_ALL ;
 int RTC_AL_EN ;
 struct mtk_rtc* dev_get_drvdata (struct device*) ;
 int mtk_clr (struct mtk_rtc*,int ,int ) ;
 int mtk_rtc_set_alarm_or_time (struct mtk_rtc*,struct rtc_time*,int ) ;
 int mtk_w32 (struct mtk_rtc*,int ,int ) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static int mtk_rtc_setalarm(struct device *dev, struct rtc_wkalrm *wkalrm)
{
 struct mtk_rtc *hw = dev_get_drvdata(dev);
 struct rtc_time *alrm_tm = &wkalrm->time;

 if (!MTK_RTC_TM_YR_VALID(alrm_tm->tm_year))
  return -EINVAL;





 mtk_clr(hw, MTK_RTC_AL_CTL, RTC_AL_EN);






 synchronize_irq(hw->irq);

 mtk_rtc_set_alarm_or_time(hw, alrm_tm, MTK_AL);


 mtk_w32(hw, MTK_RTC_AL_CTL, RTC_AL_ALL);

 return 0;
}
