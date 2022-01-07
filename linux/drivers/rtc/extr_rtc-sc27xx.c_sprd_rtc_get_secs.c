
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int time64_t ;
struct sprd_rtc {int base; int regmap; } ;
typedef enum sprd_rtc_reg_types { ____Placeholder_sprd_rtc_reg_types } sprd_rtc_reg_types ;


 int EINVAL ;


 int SPRD_RTC_DAY_ALM_VALUE ;
 int SPRD_RTC_DAY_AUXALM_UPD ;
 int SPRD_RTC_DAY_CNT_VALUE ;
 int SPRD_RTC_DAY_MASK ;
 int SPRD_RTC_HOUR_ALM_VALUE ;
 int SPRD_RTC_HOUR_AUXALM_UPD ;
 int SPRD_RTC_HOUR_CNT_VALUE ;
 int SPRD_RTC_HOUR_MASK ;
 int SPRD_RTC_MIN_ALM_VALUE ;
 int SPRD_RTC_MIN_AUXALM_UPD ;
 int SPRD_RTC_MIN_CNT_VALUE ;
 int SPRD_RTC_MIN_MASK ;
 int SPRD_RTC_SEC_ALM_VALUE ;
 int SPRD_RTC_SEC_AUXALM_UPD ;
 int SPRD_RTC_SEC_CNT_VALUE ;
 int SPRD_RTC_SEC_MASK ;

 int regmap_read (int ,int,int*) ;

__attribute__((used)) static int sprd_rtc_get_secs(struct sprd_rtc *rtc, enum sprd_rtc_reg_types type,
        time64_t *secs)
{
 u32 sec_reg, min_reg, hour_reg, day_reg;
 u32 val, sec, min, hour, day;
 int ret;

 switch (type) {
 case 128:
  sec_reg = SPRD_RTC_SEC_CNT_VALUE;
  min_reg = SPRD_RTC_MIN_CNT_VALUE;
  hour_reg = SPRD_RTC_HOUR_CNT_VALUE;
  day_reg = SPRD_RTC_DAY_CNT_VALUE;
  break;
 case 130:
  sec_reg = SPRD_RTC_SEC_ALM_VALUE;
  min_reg = SPRD_RTC_MIN_ALM_VALUE;
  hour_reg = SPRD_RTC_HOUR_ALM_VALUE;
  day_reg = SPRD_RTC_DAY_ALM_VALUE;
  break;
 case 129:
  sec_reg = SPRD_RTC_SEC_AUXALM_UPD;
  min_reg = SPRD_RTC_MIN_AUXALM_UPD;
  hour_reg = SPRD_RTC_HOUR_AUXALM_UPD;
  day_reg = SPRD_RTC_DAY_AUXALM_UPD;
  break;
 default:
  return -EINVAL;
 }

 ret = regmap_read(rtc->regmap, rtc->base + sec_reg, &val);
 if (ret)
  return ret;

 sec = val & SPRD_RTC_SEC_MASK;

 ret = regmap_read(rtc->regmap, rtc->base + min_reg, &val);
 if (ret)
  return ret;

 min = val & SPRD_RTC_MIN_MASK;

 ret = regmap_read(rtc->regmap, rtc->base + hour_reg, &val);
 if (ret)
  return ret;

 hour = val & SPRD_RTC_HOUR_MASK;

 ret = regmap_read(rtc->regmap, rtc->base + day_reg, &val);
 if (ret)
  return ret;

 day = val & SPRD_RTC_DAY_MASK;
 *secs = (((time64_t)(day * 24) + hour) * 60 + min) * 60 + sec;
 return 0;
}
