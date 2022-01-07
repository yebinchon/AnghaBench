
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct rtc_time {int dummy; } ;
struct pcap_rtc {int pcap; } ;
struct device {int dummy; } ;


 int PCAP_REG_RTC_DAY ;
 int PCAP_REG_RTC_TOD ;
 unsigned long PCAP_RTC_DAY_MASK ;
 unsigned long PCAP_RTC_TOD_MASK ;
 unsigned long SEC_PER_DAY ;
 struct pcap_rtc* dev_get_drvdata (struct device*) ;
 int ezx_pcap_read (int ,int ,unsigned long*) ;
 int rtc_time64_to_tm (unsigned long,struct rtc_time*) ;

__attribute__((used)) static int pcap_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct pcap_rtc *pcap_rtc = dev_get_drvdata(dev);
 unsigned long secs;
 u32 tod, days;

 ezx_pcap_read(pcap_rtc->pcap, PCAP_REG_RTC_TOD, &tod);
 secs = tod & PCAP_RTC_TOD_MASK;

 ezx_pcap_read(pcap_rtc->pcap, PCAP_REG_RTC_DAY, &days);
 secs += (days & PCAP_RTC_DAY_MASK) * SEC_PER_DAY;

 rtc_time64_to_tm(secs, tm);

 return 0;
}
