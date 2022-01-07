
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;
struct menf21bmc_wdt {int i2c_client; } ;


 int BMC_CMD_WD_TIME ;
 int i2c_smbus_write_word_data (int ,int ,unsigned int) ;
 struct menf21bmc_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int
menf21bmc_wdt_settimeout(struct watchdog_device *wdt, unsigned int timeout)
{
 int ret;
 struct menf21bmc_wdt *drv_data = watchdog_get_drvdata(wdt);






 ret = i2c_smbus_write_word_data(drv_data->i2c_client,
     BMC_CMD_WD_TIME, timeout * 10);
 if (ret < 0)
  return ret;

 wdt->timeout = timeout;

 return 0;
}
