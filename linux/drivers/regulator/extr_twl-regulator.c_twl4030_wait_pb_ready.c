
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ETIMEDOUT ;
 int PB_I2C_BUSY ;
 int TWL4030_PM_MASTER_PB_CFG ;
 int TWL_MODULE_PM_MASTER ;
 int mdelay (int) ;
 int twl_i2c_read_u8 (int ,int*,int ) ;

__attribute__((used)) static int twl4030_wait_pb_ready(void)
{

 int ret;
 int timeout = 10;
 u8 val;

 do {
  ret = twl_i2c_read_u8(TWL_MODULE_PM_MASTER, &val,
          TWL4030_PM_MASTER_PB_CFG);
  if (ret < 0)
   return ret;

  if (!(val & PB_I2C_BUSY))
   return 0;

  mdelay(1);
  timeout--;
 } while (timeout);

 return -ETIMEDOUT;
}
