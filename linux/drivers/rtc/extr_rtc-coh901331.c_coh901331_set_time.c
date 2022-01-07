
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
struct coh901331_port {int clk; scalar_t__ virtbase; } ;


 scalar_t__ COH901331_SET_TIME ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 struct coh901331_port* dev_get_drvdata (struct device*) ;
 int rtc_tm_to_time64 (struct rtc_time*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int coh901331_set_time(struct device *dev, struct rtc_time *tm)
{
 struct coh901331_port *rtap = dev_get_drvdata(dev);

 clk_enable(rtap->clk);
 writel(rtc_tm_to_time64(tm), rtap->virtbase + COH901331_SET_TIME);
 clk_disable(rtap->clk);

 return 0;
}
