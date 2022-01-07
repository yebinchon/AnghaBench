
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_wkalrm {unsigned long enabled; int time; } ;
struct device {int dummy; } ;
struct coh901331_port {int clk; scalar_t__ virtbase; } ;


 scalar_t__ COH901331_ALARM ;
 scalar_t__ COH901331_IRQ_MASK ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 struct coh901331_port* dev_get_drvdata (struct device*) ;
 unsigned long rtc_tm_to_time64 (int *) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int coh901331_set_alarm(struct device *dev, struct rtc_wkalrm *alarm)
{
 struct coh901331_port *rtap = dev_get_drvdata(dev);
 unsigned long time = rtc_tm_to_time64(&alarm->time);

 clk_enable(rtap->clk);
 writel(time, rtap->virtbase + COH901331_ALARM);
 writel(alarm->enabled, rtap->virtbase + COH901331_IRQ_MASK);
 clk_disable(rtap->clk);

 return 0;
}
