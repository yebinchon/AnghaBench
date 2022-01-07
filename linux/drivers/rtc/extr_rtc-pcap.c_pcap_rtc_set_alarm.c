
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct rtc_wkalrm {int time; } ;
struct pcap_rtc {int pcap; } ;
struct device {int dummy; } ;


 int PCAP_REG_RTC_DAYA ;
 int PCAP_REG_RTC_TODA ;
 unsigned long SEC_PER_DAY ;
 struct pcap_rtc* dev_get_drvdata (struct device*) ;
 int ezx_pcap_write (int ,int ,unsigned long) ;
 unsigned long rtc_tm_to_time64 (int *) ;

__attribute__((used)) static int pcap_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct pcap_rtc *pcap_rtc = dev_get_drvdata(dev);
 unsigned long secs = rtc_tm_to_time64(&alrm->time);
 u32 tod, days;

 tod = secs % SEC_PER_DAY;
 ezx_pcap_write(pcap_rtc->pcap, PCAP_REG_RTC_TODA, tod);

 days = secs / SEC_PER_DAY;
 ezx_pcap_write(pcap_rtc->pcap, PCAP_REG_RTC_DAYA, days);

 return 0;
}
