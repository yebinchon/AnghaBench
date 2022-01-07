
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rv3028_data {int regmap; } ;
struct TYPE_2__ {void* tm_mday; void* tm_hour; void* tm_min; scalar_t__ tm_sec; } ;
struct rtc_wkalrm {int enabled; int pending; TYPE_1__ time; } ;
struct device {int dummy; } ;
typedef int alarmvals ;


 int RV3028_ALARM_MIN ;
 int RV3028_CTRL2 ;
 int RV3028_CTRL2_AIE ;
 int RV3028_STATUS ;
 int RV3028_STATUS_AF ;
 void* bcd2bin (int) ;
 struct rv3028_data* dev_get_drvdata (struct device*) ;
 int regmap_bulk_read (int ,int ,int*,int) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int rv3028_get_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct rv3028_data *rv3028 = dev_get_drvdata(dev);
 u8 alarmvals[3];
 int status, ctrl, ret;

 ret = regmap_bulk_read(rv3028->regmap, RV3028_ALARM_MIN, alarmvals,
          sizeof(alarmvals));
 if (ret)
  return ret;

 ret = regmap_read(rv3028->regmap, RV3028_STATUS, &status);
 if (ret < 0)
  return ret;

 ret = regmap_read(rv3028->regmap, RV3028_CTRL2, &ctrl);
 if (ret < 0)
  return ret;

 alrm->time.tm_sec = 0;
 alrm->time.tm_min = bcd2bin(alarmvals[0] & 0x7f);
 alrm->time.tm_hour = bcd2bin(alarmvals[1] & 0x3f);
 alrm->time.tm_mday = bcd2bin(alarmvals[2] & 0x3f);

 alrm->enabled = !!(ctrl & RV3028_CTRL2_AIE);
 alrm->pending = (status & RV3028_STATUS_AF) && alrm->enabled;

 return 0;
}
