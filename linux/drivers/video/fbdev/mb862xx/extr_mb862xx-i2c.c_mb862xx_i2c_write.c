
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int len; int * buf; } ;
struct i2c_adapter {int dummy; } ;


 int EIO ;
 int mb862xx_i2c_write_byte (struct i2c_adapter*,int ) ;

__attribute__((used)) static int mb862xx_i2c_write(struct i2c_adapter *adap, struct i2c_msg *m)
{
 int i, ret = 0;

 for (i = 0; i < m->len; i++) {
  if (!mb862xx_i2c_write_byte(adap, m->buf[i])) {
   ret = -EIO;
   break;
  }
 }
 return ret;
}
