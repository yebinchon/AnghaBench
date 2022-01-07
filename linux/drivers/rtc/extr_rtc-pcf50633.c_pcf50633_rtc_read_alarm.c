
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_wkalrm {int time; int pending; int enabled; } ;
struct pcf50633_time {int * time; } ;
struct pcf50633_rtc {int pcf; int alarm_pending; int alarm_enabled; } ;
struct device {int dummy; } ;


 int EIO ;
 int PCF50633_REG_RTCSCA ;
 int PCF50633_TI_EXTENT ;
 int dev_err (struct device*,char*) ;
 struct pcf50633_rtc* dev_get_drvdata (struct device*) ;
 int pcf2rtc_time (int *,struct pcf50633_time*) ;
 int pcf50633_read_block (int ,int ,int,int *) ;
 int rtc_valid_tm (int *) ;

__attribute__((used)) static int pcf50633_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct pcf50633_rtc *rtc;
 struct pcf50633_time pcf_tm;
 int ret = 0;

 rtc = dev_get_drvdata(dev);

 alrm->enabled = rtc->alarm_enabled;
 alrm->pending = rtc->alarm_pending;

 ret = pcf50633_read_block(rtc->pcf, PCF50633_REG_RTCSCA,
    PCF50633_TI_EXTENT, &pcf_tm.time[0]);
 if (ret != PCF50633_TI_EXTENT) {
  dev_err(dev, "Failed to read time\n");
  return -EIO;
 }

 pcf2rtc_time(&alrm->time, &pcf_tm);

 return rtc_valid_tm(&alrm->time);
}
