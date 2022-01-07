
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb862xxfb_par {scalar_t__ i2c_rs; } ;
struct i2c_adapter {struct mb862xxfb_par* algo_data; } ;


 int GC_I2C_BCR ;
 int GC_I2C_CCR ;
 int I2C_DISABLE ;
 int I2C_STOP ;
 int i2c ;
 int outreg (int ,int ,int ) ;

__attribute__((used)) static void mb862xx_i2c_stop(struct i2c_adapter *adap)
{
 struct mb862xxfb_par *par = adap->algo_data;

 outreg(i2c, GC_I2C_BCR, I2C_STOP);
 outreg(i2c, GC_I2C_CCR, I2C_DISABLE);
 par->i2c_rs = 0;
}
