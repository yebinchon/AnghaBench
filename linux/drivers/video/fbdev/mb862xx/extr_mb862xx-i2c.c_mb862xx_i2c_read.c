
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int len; int * buf; } ;
struct i2c_adapter {int dummy; } ;


 int EIO ;
 int mb862xx_i2c_read_byte (struct i2c_adapter*,int *,int) ;

__attribute__((used)) static int mb862xx_i2c_read(struct i2c_adapter *adap, struct i2c_msg *m)
{
 int i, ret = 0;
 int last = m->len - 1;

 for (i = 0; i < m->len; i++) {
  if (!mb862xx_i2c_read_byte(adap, &m->buf[i], i == last)) {
   ret = -EIO;
   break;
  }
 }
 return ret;
}
