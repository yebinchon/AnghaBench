
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_wday; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct device {int dummy; } ;
struct abb5zes3_rtc_data {int regmap; } ;


 size_t ABB5ZES3_REG_RTC_DT ;
 size_t ABB5ZES3_REG_RTC_DW ;
 size_t ABB5ZES3_REG_RTC_HR ;
 size_t ABB5ZES3_REG_RTC_MN ;
 size_t ABB5ZES3_REG_RTC_MO ;
 size_t ABB5ZES3_REG_RTC_SC ;
 size_t ABB5ZES3_REG_RTC_YR ;
 int ABB5ZES3_RTC_SEC_LEN ;
 int bin2bcd (scalar_t__) ;
 struct abb5zes3_rtc_data* dev_get_drvdata (struct device*) ;
 int regmap_bulk_write (int ,size_t,int *,int ) ;

__attribute__((used)) static int abb5zes3_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct abb5zes3_rtc_data *data = dev_get_drvdata(dev);
 u8 regs[ABB5ZES3_REG_RTC_SC + ABB5ZES3_RTC_SEC_LEN];
 int ret;

 regs[ABB5ZES3_REG_RTC_SC] = bin2bcd(tm->tm_sec);
 regs[ABB5ZES3_REG_RTC_MN] = bin2bcd(tm->tm_min);
 regs[ABB5ZES3_REG_RTC_HR] = bin2bcd(tm->tm_hour);
 regs[ABB5ZES3_REG_RTC_DT] = bin2bcd(tm->tm_mday);
 regs[ABB5ZES3_REG_RTC_DW] = bin2bcd(tm->tm_wday);
 regs[ABB5ZES3_REG_RTC_MO] = bin2bcd(tm->tm_mon + 1);
 regs[ABB5ZES3_REG_RTC_YR] = bin2bcd(tm->tm_year - 100);

 ret = regmap_bulk_write(data->regmap, ABB5ZES3_REG_RTC_SC,
    regs + ABB5ZES3_REG_RTC_SC,
    ABB5ZES3_RTC_SEC_LEN);

 return ret;
}
