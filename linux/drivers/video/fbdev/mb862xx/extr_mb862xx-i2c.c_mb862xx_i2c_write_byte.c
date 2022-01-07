
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mb862xxfb_par {int dummy; } ;
struct i2c_adapter {struct mb862xxfb_par* algo_data; } ;


 int EIO ;
 int GC_I2C_BCR ;
 int GC_I2C_BSR ;
 int GC_I2C_DAR ;
 int I2C_LRB ;
 int I2C_START ;
 int i2c ;
 int inreg (int ,int ) ;
 int mb862xx_i2c_wait_event (struct i2c_adapter*) ;
 int outreg (int ,int ,int ) ;

__attribute__((used)) static int mb862xx_i2c_write_byte(struct i2c_adapter *adap, u8 byte)
{
 struct mb862xxfb_par *par = adap->algo_data;

 outreg(i2c, GC_I2C_DAR, byte);
 outreg(i2c, GC_I2C_BCR, I2C_START);
 if (!mb862xx_i2c_wait_event(adap))
  return -EIO;
 return !(inreg(i2c, GC_I2C_BSR) & I2C_LRB);
}
