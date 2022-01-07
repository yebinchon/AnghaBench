
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct lp3971 {int io_lock; int dev; int i2c; } ;


 int dev_dbg (int ,char*,int,unsigned int) ;
 int lp3971_i2c_read (int ,int,int,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static u8 lp3971_reg_read(struct lp3971 *lp3971, u8 reg)
{
 u16 val = 0;

 mutex_lock(&lp3971->io_lock);

 lp3971_i2c_read(lp3971->i2c, reg, 1, &val);

 dev_dbg(lp3971->dev, "reg read 0x%02x -> 0x%02x\n", (int)reg,
  (unsigned)val&0xff);

 mutex_unlock(&lp3971->io_lock);

 return val & 0xff;
}
