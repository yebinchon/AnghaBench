
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {int dummy; } ;
struct sam9_rtc {int dummy; } ;
struct device {int dummy; } ;


 int AT91_RTT_RTTINCIEN ;
 int MR ;
 struct sam9_rtc* dev_get_drvdata (struct device*) ;
 int rtt_readl (struct sam9_rtc*,int ) ;
 int seq_printf (struct seq_file*,char*,char*) ;

__attribute__((used)) static int at91_rtc_proc(struct device *dev, struct seq_file *seq)
{
 struct sam9_rtc *rtc = dev_get_drvdata(dev);
 u32 mr = rtt_readl(rtc, MR);

 seq_printf(seq, "update_IRQ\t: %s\n",
     (mr & AT91_RTT_RTTINCIEN) ? "yes" : "no");
 return 0;
}
