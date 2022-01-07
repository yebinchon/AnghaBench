
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;


 unsigned int PB_I2C_BWEN ;
 int TWL4030_PM_MASTER_PB_CFG ;
 int TWL4030_PM_MASTER_PB_WORD_LSB ;
 int TWL4030_PM_MASTER_PB_WORD_MSB ;
 int TWL_MODULE_PM_MASTER ;
 int twl4030_wait_pb_ready () ;
 int twl_i2c_read_u8 (int ,unsigned int*,int ) ;
 int twl_i2c_write_u8 (int ,unsigned int,int ) ;

__attribute__((used)) static int twl4030_send_pb_msg(unsigned msg)
{
 u8 val;
 int ret;


 ret = twl_i2c_read_u8(TWL_MODULE_PM_MASTER, &val,
         TWL4030_PM_MASTER_PB_CFG);
 if (ret < 0)
  return ret;


 ret = twl_i2c_write_u8(TWL_MODULE_PM_MASTER, val | PB_I2C_BWEN,
          TWL4030_PM_MASTER_PB_CFG);
 if (ret < 0)
  return ret;

 ret = twl4030_wait_pb_ready();
 if (ret < 0)
  return ret;

 ret = twl_i2c_write_u8(TWL_MODULE_PM_MASTER, msg >> 8,
          TWL4030_PM_MASTER_PB_WORD_MSB);
 if (ret < 0)
  return ret;

 ret = twl_i2c_write_u8(TWL_MODULE_PM_MASTER, msg & 0xff,
          TWL4030_PM_MASTER_PB_WORD_LSB);
 if (ret < 0)
  return ret;

 ret = twl4030_wait_pb_ready();
 if (ret < 0)
  return ret;


 return twl_i2c_write_u8(TWL_MODULE_PM_MASTER, val,
    TWL4030_PM_MASTER_PB_CFG);
}
