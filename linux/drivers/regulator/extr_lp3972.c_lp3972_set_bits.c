
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct lp3972 {int io_lock; int dev; int i2c; } ;


 int dev_dbg (int ,char*,int,unsigned int) ;
 int lp3972_i2c_read (int ,scalar_t__,int,int*) ;
 int lp3972_i2c_write (int ,scalar_t__,int,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lp3972_set_bits(struct lp3972 *lp3972, u8 reg, u16 mask, u16 val)
{
 u16 tmp;
 int ret;

 mutex_lock(&lp3972->io_lock);

 ret = lp3972_i2c_read(lp3972->i2c, reg, 1, &tmp);
 if (ret == 0) {
  tmp = (tmp & ~mask) | val;
  ret = lp3972_i2c_write(lp3972->i2c, reg, 1, &tmp);
  dev_dbg(lp3972->dev, "reg write 0x%02x -> 0x%02x\n", (int)reg,
   (unsigned)val & 0xff);
 }
 mutex_unlock(&lp3972->io_lock);

 return ret;
}
