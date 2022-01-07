
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_wkalrm {scalar_t__ enabled; int time; } ;
struct pcf50633_time {int* time; } ;
struct pcf50633_rtc {scalar_t__ alarm_enabled; int pcf; scalar_t__ alarm_pending; } ;
struct device {int dummy; } ;


 int PCF50633_IRQ_ALARM ;
 int PCF50633_REG_RTCSCA ;
 int PCF50633_TI_EXTENT ;
 size_t PCF50633_TI_WKDAY ;
 struct pcf50633_rtc* dev_get_drvdata (struct device*) ;
 int pcf50633_irq_mask (int ,int ) ;
 int pcf50633_irq_mask_get (int ,int ) ;
 int pcf50633_irq_unmask (int ,int ) ;
 int pcf50633_write_block (int ,int ,int ,int*) ;
 int rtc2pcf_time (struct pcf50633_time*,int *) ;

__attribute__((used)) static int pcf50633_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct pcf50633_rtc *rtc;
 struct pcf50633_time pcf_tm;
 int alarm_masked, ret = 0;

 rtc = dev_get_drvdata(dev);

 rtc2pcf_time(&pcf_tm, &alrm->time);


 pcf_tm.time[PCF50633_TI_WKDAY] = 7;

 alarm_masked = pcf50633_irq_mask_get(rtc->pcf, PCF50633_IRQ_ALARM);


 if (!alarm_masked)
  pcf50633_irq_mask(rtc->pcf, PCF50633_IRQ_ALARM);


 ret = pcf50633_write_block(rtc->pcf, PCF50633_REG_RTCSCA,
    PCF50633_TI_EXTENT, &pcf_tm.time[0]);
 if (!alrm->enabled)
  rtc->alarm_pending = 0;

 if (!alarm_masked || alrm->enabled)
  pcf50633_irq_unmask(rtc->pcf, PCF50633_IRQ_ALARM);
 rtc->alarm_enabled = alrm->enabled;

 return ret;
}
