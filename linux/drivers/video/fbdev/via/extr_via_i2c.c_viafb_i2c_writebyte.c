
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct i2c_msg {size_t addr; int len; size_t* buf; scalar_t__ flags; } ;
struct TYPE_2__ {int adapter; int is_active; } ;


 int EIO ;
 int ENODEV ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;
 TYPE_1__* via_i2c_par ;

int viafb_i2c_writebyte(u8 adap, u8 slave_addr, u8 index, u8 data)
{
 int ret;
 u8 msg[2] = { index, data };
 struct i2c_msg msgs;

 if (!via_i2c_par[adap].is_active)
  return -ENODEV;
 msgs.flags = 0;
 msgs.addr = slave_addr / 2;
 msgs.len = 2;
 msgs.buf = msg;
 ret = i2c_transfer(&via_i2c_par[adap].adapter, &msgs, 1);
 if (ret == 1)
  ret = 0;
 else if (ret >= 0)
  ret = -EIO;

 return ret;
}
