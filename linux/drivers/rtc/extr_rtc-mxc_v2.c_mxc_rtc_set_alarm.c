
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ time64_t ;
struct rtc_wkalrm {int enabled; int time; } ;
struct mxc_rtc_data {scalar_t__ ioaddr; } ;
struct device {int dummy; } ;


 scalar_t__ SRTC_LPSAR ;
 scalar_t__ SRTC_LPSR ;
 int SRTC_LPSR_ALP ;
 struct mxc_rtc_data* dev_get_drvdata (struct device*) ;
 int mxc_rtc_alarm_irq_enable_locked (struct mxc_rtc_data*,int ) ;
 int mxc_rtc_lock (struct mxc_rtc_data*) ;
 int mxc_rtc_sync_lp_locked (struct device*,scalar_t__) ;
 int mxc_rtc_unlock (struct mxc_rtc_data*) ;
 scalar_t__ rtc_tm_to_time64 (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int mxc_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 const time64_t time = rtc_tm_to_time64(&alrm->time);
 struct mxc_rtc_data *pdata = dev_get_drvdata(dev);
 int ret = mxc_rtc_lock(pdata);

 if (ret)
  return ret;

 writel((u32)time, pdata->ioaddr + SRTC_LPSAR);


 writel(SRTC_LPSR_ALP, pdata->ioaddr + SRTC_LPSR);
 mxc_rtc_sync_lp_locked(dev, pdata->ioaddr);

 mxc_rtc_alarm_irq_enable_locked(pdata, alrm->enabled);
 mxc_rtc_sync_lp_locked(dev, pdata->ioaddr);
 mxc_rtc_unlock(pdata);
 return ret;
}
