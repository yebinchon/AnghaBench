
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct device {int dummy; } ;


 int SCU_WATCHDOG_KEEPALIVE ;
 int dev_crit (struct device*,char*,int) ;
 struct device* watchdog_get_drvdata (struct watchdog_device*) ;
 int wdt_command (int ,int *,int ) ;

__attribute__((used)) static int wdt_ping(struct watchdog_device *wd)
{
 struct device *dev = watchdog_get_drvdata(wd);
 int ret;

 ret = wdt_command(SCU_WATCHDOG_KEEPALIVE, ((void*)0), 0);
 if (ret)
  dev_crit(dev, "Error executing keepalive: %d\n", ret);

 return ret;
}
