
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int time64_t ;
struct sprd_rtc {int base; int regmap; int dev; } ;
typedef enum sprd_rtc_reg_types { ____Placeholder_sprd_rtc_reg_types } sprd_rtc_reg_types ;


 int EINVAL ;

 int SPRD_RTC_ALMTIME_INT_MASK ;

 int SPRD_RTC_DAY_ALM_UPD ;
 int SPRD_RTC_DAY_AUXALM_UPD ;
 int SPRD_RTC_DAY_CNT_UPD ;
 int SPRD_RTC_HOUR_ALM_UPD ;
 int SPRD_RTC_HOUR_AUXALM_UPD ;
 int SPRD_RTC_HOUR_CNT_UPD ;
 int SPRD_RTC_INT_CLR ;
 int SPRD_RTC_INT_RAW_STS ;
 int SPRD_RTC_MIN_ALM_UPD ;
 int SPRD_RTC_MIN_AUXALM_UPD ;
 int SPRD_RTC_MIN_CNT_UPD ;
 int SPRD_RTC_POLL_DELAY_US ;
 int SPRD_RTC_POLL_TIMEOUT ;
 int SPRD_RTC_SEC_ALM_UPD ;
 int SPRD_RTC_SEC_AUXALM_UPD ;
 int SPRD_RTC_SEC_CNT_UPD ;

 int SPRD_RTC_TIME_INT_MASK ;
 int dev_err (int ,char*) ;
 int div_s64_rem (int ,int,int*) ;
 int regmap_read_poll_timeout (int ,int,int,int,int ,int ) ;
 int regmap_write (int ,int,int) ;

__attribute__((used)) static int sprd_rtc_set_secs(struct sprd_rtc *rtc, enum sprd_rtc_reg_types type,
        time64_t secs)
{
 u32 sec_reg, min_reg, hour_reg, day_reg, sts_mask;
 u32 sec, min, hour, day, val;
 int ret, rem;


 day = div_s64_rem(secs, 86400, &rem);
 hour = rem / 3600;
 rem -= hour * 3600;
 min = rem / 60;
 sec = rem - min * 60;

 switch (type) {
 case 128:
  sec_reg = SPRD_RTC_SEC_CNT_UPD;
  min_reg = SPRD_RTC_MIN_CNT_UPD;
  hour_reg = SPRD_RTC_HOUR_CNT_UPD;
  day_reg = SPRD_RTC_DAY_CNT_UPD;
  sts_mask = SPRD_RTC_TIME_INT_MASK;
  break;
 case 130:
  sec_reg = SPRD_RTC_SEC_ALM_UPD;
  min_reg = SPRD_RTC_MIN_ALM_UPD;
  hour_reg = SPRD_RTC_HOUR_ALM_UPD;
  day_reg = SPRD_RTC_DAY_ALM_UPD;
  sts_mask = SPRD_RTC_ALMTIME_INT_MASK;
  break;
 case 129:
  sec_reg = SPRD_RTC_SEC_AUXALM_UPD;
  min_reg = SPRD_RTC_MIN_AUXALM_UPD;
  hour_reg = SPRD_RTC_HOUR_AUXALM_UPD;
  day_reg = SPRD_RTC_DAY_AUXALM_UPD;
  sts_mask = 0;
  break;
 default:
  return -EINVAL;
 }

 ret = regmap_write(rtc->regmap, rtc->base + sec_reg, sec);
 if (ret)
  return ret;

 ret = regmap_write(rtc->regmap, rtc->base + min_reg, min);
 if (ret)
  return ret;

 ret = regmap_write(rtc->regmap, rtc->base + hour_reg, hour);
 if (ret)
  return ret;

 ret = regmap_write(rtc->regmap, rtc->base + day_reg, day);
 if (ret)
  return ret;

 if (type == 129)
  return 0;







 ret = regmap_read_poll_timeout(rtc->regmap,
           rtc->base + SPRD_RTC_INT_RAW_STS, val,
           ((val & sts_mask) == sts_mask),
           SPRD_RTC_POLL_DELAY_US,
           SPRD_RTC_POLL_TIMEOUT);
 if (ret < 0) {
  dev_err(rtc->dev, "set time/alarm values timeout\n");
  return ret;
 }

 return regmap_write(rtc->regmap, rtc->base + SPRD_RTC_INT_CLR,
       sts_mask);
}
