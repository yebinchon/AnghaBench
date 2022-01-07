
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct rtc_time {int dummy; } ;
struct rtc_wkalrm {struct rtc_time time; } ;
struct pcap_rtc {int pcap; } ;
struct device {int dummy; } ;


 int PCAP_REG_RTC_DAYA ;
 int PCAP_REG_RTC_TODA ;
 unsigned long PCAP_RTC_DAY_MASK ;
 unsigned long PCAP_RTC_TOD_MASK ;
 unsigned long SEC_PER_DAY ;
 struct pcap_rtc* dev_get_drvdata (struct device*) ;
 int ezx_pcap_read (int ,int ,unsigned long*) ;
 int rtc_time64_to_tm (unsigned long,struct rtc_time*) ;

__attribute__((used)) static int pcap_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct pcap_rtc *pcap_rtc = dev_get_drvdata(dev);
 struct rtc_time *tm = &alrm->time;
 unsigned long secs;
 u32 tod;
 u32 days;

 ezx_pcap_read(pcap_rtc->pcap, PCAP_REG_RTC_TODA, &tod);
 secs = tod & PCAP_RTC_TOD_MASK;

 ezx_pcap_read(pcap_rtc->pcap, PCAP_REG_RTC_DAYA, &days);
 secs += (days & PCAP_RTC_DAY_MASK) * SEC_PER_DAY;

 rtc_time64_to_tm(secs, tm);

 return 0;
}
