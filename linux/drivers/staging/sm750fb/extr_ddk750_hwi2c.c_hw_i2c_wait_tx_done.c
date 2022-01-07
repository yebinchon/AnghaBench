
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int HWI2C_WAIT_TIMEOUT ;
 int I2C_STATUS ;
 int I2C_STATUS_TX ;
 int peek32 (int ) ;

__attribute__((used)) static long hw_i2c_wait_tx_done(void)
{
 unsigned int timeout;


 timeout = HWI2C_WAIT_TIMEOUT;
 while (!(peek32(I2C_STATUS) & I2C_STATUS_TX) && (timeout != 0))
  timeout--;

 if (timeout == 0)
  return -1;

 return 0;
}
