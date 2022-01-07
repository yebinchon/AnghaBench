
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_rtc_info {int dummy; } ;
struct device {int dummy; } ;


 int ETIMEDOUT ;
 int dev_err (struct device*,char*) ;
 struct tegra_rtc_info* dev_get_drvdata (struct device*) ;
 scalar_t__ tegra_rtc_check_busy (struct tegra_rtc_info*) ;
 int udelay (int) ;

__attribute__((used)) static int tegra_rtc_wait_while_busy(struct device *dev)
{
 struct tegra_rtc_info *info = dev_get_drvdata(dev);
 int retries = 500;





 while (tegra_rtc_check_busy(info)) {
  if (!retries--)
   goto retry_failed;

  udelay(1);
 }


 return 0;

retry_failed:
 dev_err(dev, "write failed: retry count exceeded\n");
 return -ETIMEDOUT;
}
