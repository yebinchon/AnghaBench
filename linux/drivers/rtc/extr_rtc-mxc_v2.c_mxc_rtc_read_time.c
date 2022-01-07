
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct rtc_time {int dummy; } ;
struct mxc_rtc_data {int clk; scalar_t__ ioaddr; } ;
struct device {int dummy; } ;


 scalar_t__ SRTC_LPSCMR ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 struct mxc_rtc_data* dev_get_drvdata (struct device*) ;
 int readl (scalar_t__) ;
 int rtc_time64_to_tm (int const,struct rtc_time*) ;

__attribute__((used)) static int mxc_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct mxc_rtc_data *pdata = dev_get_drvdata(dev);
 const int clk_failed = clk_enable(pdata->clk);

 if (!clk_failed) {
  const time64_t now = readl(pdata->ioaddr + SRTC_LPSCMR);

  rtc_time64_to_tm(now, tm);
  clk_disable(pdata->clk);
  return 0;
 }
 return clk_failed;
}
