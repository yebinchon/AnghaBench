
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mb862xxfb_par {int dummy; } ;
struct i2c_adapter {struct mb862xxfb_par* algo_data; } ;


 int GC_I2C_BCR ;
 int I2C_BER ;
 int I2C_INT ;
 int i2c ;
 int inreg (int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int mb862xx_i2c_wait_event(struct i2c_adapter *adap)
{
 struct mb862xxfb_par *par = adap->algo_data;
 u32 reg;

 do {
  udelay(10);
  reg = inreg(i2c, GC_I2C_BCR);
  if (reg & (I2C_INT | I2C_BER))
   break;
 } while (1);

 return (reg & I2C_BER) ? 0 : 1;
}
