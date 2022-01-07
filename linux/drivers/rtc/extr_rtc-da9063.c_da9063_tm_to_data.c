
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_year; int tm_mon; } ;
struct da9063_compatible_rtc_regmap {int rtc_count_sec_mask; int rtc_count_min_mask; int rtc_count_hour_mask; int rtc_count_day_mask; int rtc_count_month_mask; int rtc_count_year_mask; } ;
struct da9063_compatible_rtc {struct da9063_compatible_rtc_regmap* config; } ;


 int MONTHS_TO_DA9063 (int ) ;
 size_t RTC_DAY ;
 size_t RTC_HOUR ;
 size_t RTC_MIN ;
 size_t RTC_MONTH ;
 size_t RTC_SEC ;
 size_t RTC_YEAR ;
 int YEARS_TO_DA9063 (int ) ;

__attribute__((used)) static void da9063_tm_to_data(struct rtc_time *tm, u8 *data,
         struct da9063_compatible_rtc *rtc)
{
 const struct da9063_compatible_rtc_regmap *config = rtc->config;

 data[RTC_SEC] = tm->tm_sec & config->rtc_count_sec_mask;
 data[RTC_MIN] = tm->tm_min & config->rtc_count_min_mask;
 data[RTC_HOUR] = tm->tm_hour & config->rtc_count_hour_mask;
 data[RTC_DAY] = tm->tm_mday & config->rtc_count_day_mask;
 data[RTC_MONTH] = MONTHS_TO_DA9063(tm->tm_mon) &
    config->rtc_count_month_mask;
 data[RTC_YEAR] = YEARS_TO_DA9063(tm->tm_year) &
    config->rtc_count_year_mask;
}
