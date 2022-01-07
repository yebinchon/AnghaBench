
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct menf21bmc_wdt {int i2c_client; } ;


 int BMC_CMD_WD_OFF ;
 int BMC_WD_OFF_VAL ;
 int i2c_smbus_write_word_data (int ,int ,int ) ;
 struct menf21bmc_wdt* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void menf21bmc_wdt_shutdown(struct platform_device *pdev)
{
 struct menf21bmc_wdt *drv_data = platform_get_drvdata(pdev);

 i2c_smbus_write_word_data(drv_data->i2c_client,
      BMC_CMD_WD_OFF, BMC_WD_OFF_VAL);
}
