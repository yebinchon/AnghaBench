
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
struct coh901331_port {int clk; scalar_t__ virtbase; } ;


 scalar_t__ COH901331_CUR_TIME ;
 scalar_t__ COH901331_VALID ;
 int EINVAL ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 struct coh901331_port* dev_get_drvdata (struct device*) ;
 int readl (scalar_t__) ;
 int rtc_time64_to_tm (int ,struct rtc_time*) ;

__attribute__((used)) static int coh901331_read_time(struct device *dev, struct rtc_time *tm)
{
 struct coh901331_port *rtap = dev_get_drvdata(dev);

 clk_enable(rtap->clk);

 if (!readl(rtap->virtbase + COH901331_VALID)) {
  clk_disable(rtap->clk);
  return -EINVAL;
 }

 rtc_time64_to_tm(readl(rtap->virtbase + COH901331_CUR_TIME), tm);
 clk_disable(rtap->clk);
 return 0;
}
