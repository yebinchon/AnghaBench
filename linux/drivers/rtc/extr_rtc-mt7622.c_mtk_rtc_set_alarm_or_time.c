
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rtc_time {scalar_t__ tm_sec; scalar_t__ tm_min; scalar_t__ tm_hour; scalar_t__ tm_mday; scalar_t__ tm_wday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
struct mtk_rtc {int dummy; } ;


 int MTK_DOM ;
 int MTK_DOW ;
 int MTK_HOU ;
 int MTK_MIN ;
 int MTK_MON ;
 scalar_t__ MTK_RTC_TM_YR_OFFSET ;
 int MTK_RTC_TREG (int,int ) ;
 int MTK_SEC ;
 int MTK_YEA ;
 int mtk_w32 (struct mtk_rtc*,int ,scalar_t__) ;

__attribute__((used)) static void mtk_rtc_set_alarm_or_time(struct mtk_rtc *hw, struct rtc_time *tm,
          int time_alarm)
{
 u32 year;


 year = tm->tm_year - MTK_RTC_TM_YR_OFFSET;

 mtk_w32(hw, MTK_RTC_TREG(time_alarm, MTK_YEA), year);
 mtk_w32(hw, MTK_RTC_TREG(time_alarm, MTK_MON), tm->tm_mon + 1);
 mtk_w32(hw, MTK_RTC_TREG(time_alarm, MTK_DOW), tm->tm_wday);
 mtk_w32(hw, MTK_RTC_TREG(time_alarm, MTK_DOM), tm->tm_mday);
 mtk_w32(hw, MTK_RTC_TREG(time_alarm, MTK_HOU), tm->tm_hour);
 mtk_w32(hw, MTK_RTC_TREG(time_alarm, MTK_MIN), tm->tm_min);
 mtk_w32(hw, MTK_RTC_TREG(time_alarm, MTK_SEC), tm->tm_sec);
}
