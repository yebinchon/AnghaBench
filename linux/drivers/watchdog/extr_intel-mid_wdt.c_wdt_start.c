
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct watchdog_device {int timeout; } ;
struct device {int dummy; } ;
typedef int ipc_wd_start ;


 int DIV_ROUND_UP (int,int) ;
 int MID_WDT_PRETIMEOUT ;
 int SCU_WATCHDOG_START ;
 int dev_crit (struct device*,char*,int) ;
 struct device* watchdog_get_drvdata (struct watchdog_device*) ;
 int wdt_command (int ,int *,int) ;

__attribute__((used)) static int wdt_start(struct watchdog_device *wd)
{
 struct device *dev = watchdog_get_drvdata(wd);
 int ret, in_size;
 int timeout = wd->timeout;
 struct ipc_wd_start {
  u32 pretimeout;
  u32 timeout;
 } ipc_wd_start = { timeout - MID_WDT_PRETIMEOUT, timeout };





 in_size = DIV_ROUND_UP(sizeof(ipc_wd_start), 4);

 ret = wdt_command(SCU_WATCHDOG_START, (u32 *)&ipc_wd_start, in_size);
 if (ret)
  dev_crit(dev, "error starting watchdog: %d\n", ret);

 return ret;
}
