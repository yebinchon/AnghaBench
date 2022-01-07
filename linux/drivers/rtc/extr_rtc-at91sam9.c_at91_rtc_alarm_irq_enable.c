
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sam9_rtc {int dummy; } ;
struct device {int dummy; } ;


 int AT91_RTT_ALMIEN ;
 int MR ;
 int dev_dbg (struct device*,char*,unsigned int,int) ;
 struct sam9_rtc* dev_get_drvdata (struct device*) ;
 int rtt_readl (struct sam9_rtc*,int ) ;
 int rtt_writel (struct sam9_rtc*,int ,int) ;

__attribute__((used)) static int at91_rtc_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct sam9_rtc *rtc = dev_get_drvdata(dev);
 u32 mr = rtt_readl(rtc, MR);

 dev_dbg(dev, "alarm_irq_enable: enabled=%08x, mr %08x\n", enabled, mr);
 if (enabled)
  rtt_writel(rtc, MR, mr | AT91_RTT_ALMIEN);
 else
  rtt_writel(rtc, MR, mr & ~AT91_RTT_ALMIEN);
 return 0;
}
