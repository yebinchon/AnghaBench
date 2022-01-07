
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
typedef int u16 ;
struct i2c_msg {int len; unsigned char* buf; int flags; int addr; } ;
struct i2c_adapter {int dummy; } ;


 int DDC_ADDR ;
 int EAGAIN ;
 int EIO ;
 int I2C_M_RD ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;

__attribute__((used)) static int dvic_ddc_read(struct i2c_adapter *adapter,
  unsigned char *buf, u16 count, u8 offset)
{
 int r, retries;

 for (retries = 3; retries > 0; retries--) {
  struct i2c_msg msgs[] = {
   {
    .addr = DDC_ADDR,
    .flags = 0,
    .len = 1,
    .buf = &offset,
   }, {
    .addr = DDC_ADDR,
    .flags = I2C_M_RD,
    .len = count,
    .buf = buf,
   }
  };

  r = i2c_transfer(adapter, msgs, 2);
  if (r == 2)
   return 0;

  if (r != -EAGAIN)
   break;
 }

 return r < 0 ? r : -EIO;
}
