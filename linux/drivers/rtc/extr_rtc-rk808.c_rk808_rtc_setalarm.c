
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; int tm_wday; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_2__ time; } ;
struct rk808_rtc {TYPE_1__* creg; struct rk808* rk808; } ;
struct rk808 {int regmap; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int alarm_seconds_reg; } ;


 int NUM_ALARM_REGS ;
 int bin2bcd (scalar_t__) ;
 int dev_dbg (struct device*,char*,TYPE_2__*,int ,TYPE_2__*) ;
 int dev_err (struct device*,char*,int) ;
 struct rk808_rtc* dev_get_drvdata (struct device*) ;
 int gregorian_to_rockchip (TYPE_2__*) ;
 int regmap_bulk_write (int ,int ,int *,int) ;
 int rk808_rtc_start_alarm (struct rk808_rtc*) ;
 int rk808_rtc_stop_alarm (struct rk808_rtc*) ;

__attribute__((used)) static int rk808_rtc_setalarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct rk808_rtc *rk808_rtc = dev_get_drvdata(dev);
 struct rk808 *rk808 = rk808_rtc->rk808;
 u8 alrm_data[NUM_ALARM_REGS];
 int ret;

 ret = rk808_rtc_stop_alarm(rk808_rtc);
 if (ret) {
  dev_err(dev, "Failed to stop alarm: %d\n", ret);
  return ret;
 }
 dev_dbg(dev, "alrm set RTC date/time %ptRd(%d) %ptRt\n",
  &alrm->time, alrm->time.tm_wday, &alrm->time);

 gregorian_to_rockchip(&alrm->time);
 alrm_data[0] = bin2bcd(alrm->time.tm_sec);
 alrm_data[1] = bin2bcd(alrm->time.tm_min);
 alrm_data[2] = bin2bcd(alrm->time.tm_hour);
 alrm_data[3] = bin2bcd(alrm->time.tm_mday);
 alrm_data[4] = bin2bcd(alrm->time.tm_mon + 1);
 alrm_data[5] = bin2bcd(alrm->time.tm_year - 100);

 ret = regmap_bulk_write(rk808->regmap,
    rk808_rtc->creg->alarm_seconds_reg,
    alrm_data, NUM_ALARM_REGS);
 if (ret) {
  dev_err(dev, "Failed to bulk write: %d\n", ret);
  return ret;
 }
 if (alrm->enabled) {
  ret = rk808_rtc_start_alarm(rk808_rtc);
  if (ret) {
   dev_err(dev, "Failed to start alarm: %d\n", ret);
   return ret;
  }
 }
 return 0;
}
