
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_wkalrm {int time; int enabled; } ;
struct device {int dummy; } ;
struct cpcap_time {int tod1; int tod2; int day; } ;
struct cpcap_rtc {int regmap; int alarm_enabled; } ;


 int CPCAP_REG_DAYA ;
 int CPCAP_REG_TODA1 ;
 int CPCAP_REG_TODA2 ;
 int EIO ;
 int cpcap2rtc_time (int *,struct cpcap_time*) ;
 int dev_err (struct device*,char*) ;
 struct cpcap_rtc* dev_get_drvdata (struct device*) ;
 int regmap_read (int ,int ,int *) ;
 int rtc_valid_tm (int *) ;

__attribute__((used)) static int cpcap_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct cpcap_rtc *rtc;
 struct cpcap_time cpcap_tm;
 int ret;

 rtc = dev_get_drvdata(dev);

 alrm->enabled = rtc->alarm_enabled;

 ret = regmap_read(rtc->regmap, CPCAP_REG_DAYA, &cpcap_tm.day);
 ret |= regmap_read(rtc->regmap, CPCAP_REG_TODA2, &cpcap_tm.tod2);
 ret |= regmap_read(rtc->regmap, CPCAP_REG_TODA1, &cpcap_tm.tod1);

 if (ret) {
  dev_err(dev, "Failed to read time\n");
  return -EIO;
 }

 cpcap2rtc_time(&alrm->time, &cpcap_tm);
 return rtc_valid_tm(&alrm->time);
}
