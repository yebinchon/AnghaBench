
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct via_aux_drv {TYPE_1__* bus; int addr; } ;
struct i2c_msg {int len; int* buf; int flags; int addr; } ;
struct TYPE_2__ {int adap; } ;


 int I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static inline bool via_aux_read(struct via_aux_drv *drv, u8 start, u8 *buf,
 u8 len)
{
 struct i2c_msg msg[2] = {
  {.addr = drv->addr, .flags = 0, .len = 1, .buf = &start},
  {.addr = drv->addr, .flags = I2C_M_RD, .len = len, .buf = buf} };

 return i2c_transfer(drv->bus->adap, msg, 2) == 2;
}
