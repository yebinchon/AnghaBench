
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct mtk_rtc {int dummy; } ;
struct device {int dummy; } ;


 int MTK_TC ;
 struct mtk_rtc* dev_get_drvdata (struct device*) ;
 int mtk_rtc_get_alarm_or_time (struct mtk_rtc*,struct rtc_time*,int ) ;

__attribute__((used)) static int mtk_rtc_gettime(struct device *dev, struct rtc_time *tm)
{
 struct mtk_rtc *hw = dev_get_drvdata(dev);

 mtk_rtc_get_alarm_or_time(hw, tm, MTK_TC);

 return 0;
}
