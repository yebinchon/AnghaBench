
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct menf21bmc_wdt {int i2c_client; } ;


 int BMC_CMD_WD_OFF ;
 int BMC_WD_OFF_VAL ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 struct menf21bmc_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int menf21bmc_wdt_stop(struct watchdog_device *wdt)
{
 struct menf21bmc_wdt *drv_data = watchdog_get_drvdata(wdt);

 return i2c_smbus_write_byte_data(drv_data->i2c_client,
      BMC_CMD_WD_OFF, BMC_WD_OFF_VAL);
}
