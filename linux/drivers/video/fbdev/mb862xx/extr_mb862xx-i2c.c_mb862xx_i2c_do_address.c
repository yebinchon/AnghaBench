
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb862xxfb_par {int i2c_rs; } ;
struct i2c_adapter {struct mb862xxfb_par* algo_data; } ;


 int EIO ;
 int GC_I2C_BCR ;
 int GC_I2C_BSR ;
 int GC_I2C_CCR ;
 int GC_I2C_DAR ;
 int I2C_CLOCK_AND_ENABLE ;
 int I2C_LRB ;
 int I2C_REPEATED_START ;
 int I2C_START ;
 int i2c ;
 int inreg (int ,int ) ;
 int mb862xx_i2c_wait_event (struct i2c_adapter*) ;
 int outreg (int ,int ,int) ;

__attribute__((used)) static int mb862xx_i2c_do_address(struct i2c_adapter *adap, int addr)
{
 struct mb862xxfb_par *par = adap->algo_data;

 outreg(i2c, GC_I2C_DAR, addr);
 outreg(i2c, GC_I2C_CCR, I2C_CLOCK_AND_ENABLE);
 outreg(i2c, GC_I2C_BCR, par->i2c_rs ? I2C_REPEATED_START : I2C_START);
 if (!mb862xx_i2c_wait_event(adap))
  return -EIO;
 par->i2c_rs = !(inreg(i2c, GC_I2C_BSR) & I2C_LRB);
 return par->i2c_rs;
}
