
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct rtc_time {int dummy; } ;
struct mxc_rtc_data {scalar_t__ ioaddr; } ;
struct device {int dummy; } ;


 scalar_t__ SRTC_LPSCMR ;
 struct mxc_rtc_data* dev_get_drvdata (struct device*) ;
 int mxc_rtc_lock (struct mxc_rtc_data*) ;
 int mxc_rtc_sync_lp_locked (struct device*,scalar_t__) ;
 int mxc_rtc_unlock (struct mxc_rtc_data*) ;
 int rtc_tm_to_time64 (struct rtc_time*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int mxc_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct mxc_rtc_data *pdata = dev_get_drvdata(dev);
 time64_t time = rtc_tm_to_time64(tm);
 int ret;

 ret = mxc_rtc_lock(pdata);
 if (ret)
  return ret;

 writel(time, pdata->ioaddr + SRTC_LPSCMR);
 mxc_rtc_sync_lp_locked(dev, pdata->ioaddr);
 return mxc_rtc_unlock(pdata);
}
