
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct rtc_wkalrm {struct rtc_time time; } ;
struct ftm_rtc {unsigned long alarm_freq; } ;
struct device {int dummy; } ;


 int ERANGE ;
 int FTM_MOD ;
 unsigned long MAX_COUNT_VAL ;
 struct ftm_rtc* dev_get_drvdata (struct device*) ;
 int ftm_clean_alarm (struct ftm_rtc*) ;
 int ftm_counter_enable (struct ftm_rtc*) ;
 int ftm_irq_disable (struct ftm_rtc*) ;
 int ftm_irq_enable (struct ftm_rtc*) ;
 int ftm_rtc_read_time (struct device*,struct rtc_time*) ;
 int pr_err (char*) ;
 int rtc_tm_to_time (struct rtc_time*,unsigned long*) ;
 int rtc_writel (struct ftm_rtc*,int ,unsigned long) ;

__attribute__((used)) static int ftm_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alm)
{
 struct rtc_time tm;
 unsigned long now, alm_time, cycle;
 struct ftm_rtc *rtc = dev_get_drvdata(dev);

 ftm_rtc_read_time(dev, &tm);
 rtc_tm_to_time(&tm, &now);
 rtc_tm_to_time(&alm->time, &alm_time);

 ftm_clean_alarm(rtc);
 cycle = (alm_time - now) * rtc->alarm_freq;
 if (cycle > MAX_COUNT_VAL) {
  pr_err("Out of alarm range {0~262} seconds.\n");
  return -ERANGE;
 }

 ftm_irq_disable(rtc);







 rtc_writel(rtc, FTM_MOD, cycle - 1);

 ftm_counter_enable(rtc);
 ftm_irq_enable(rtc);

 return 0;

}
