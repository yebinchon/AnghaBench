
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int pm2xxx_i2c; } ;
struct pm2xxx_charger {int dev; TYPE_1__ config; } ;


 int dev_err (int ,char*,int) ;
 int i2c_smbus_write_i2c_block_data (int ,int,int,int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static int pm2xxx_reg_write(struct pm2xxx_charger *pm2, int reg, u8 val)
{
 int ret;


 pm_runtime_get_sync(pm2->dev);

 ret = i2c_smbus_write_i2c_block_data(pm2->config.pm2xxx_i2c, reg,
    1, &val);
 if (ret < 0)
  dev_err(pm2->dev, "Error writing register at 0x%x\n", reg);
 else
  ret = 0;

 pm_runtime_put_sync(pm2->dev);

 return ret;
}
