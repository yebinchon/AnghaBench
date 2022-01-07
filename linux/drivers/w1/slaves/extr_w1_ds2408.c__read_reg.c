
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct w1_slave {int dev; TYPE_1__* master; } ;
struct TYPE_3__ {int bus_mutex; } ;


 int EINVAL ;
 int EIO ;
 scalar_t__ W1_F29_FUNC_READ_PIO_REGS ;
 int dev_dbg (int *,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned char w1_read_8 (TYPE_1__*) ;
 scalar_t__ w1_reset_select_slave (struct w1_slave*) ;
 int w1_write_block (TYPE_1__*,scalar_t__*,int) ;

__attribute__((used)) static int _read_reg(struct w1_slave *sl, u8 address, unsigned char* buf)
{
 u8 wrbuf[3];
 dev_dbg(&sl->dev,
   "Reading with slave: %p, reg addr: %0#4x, buff addr: %p",
   sl, (unsigned int)address, buf);

 if (!buf)
  return -EINVAL;

 mutex_lock(&sl->master->bus_mutex);
 dev_dbg(&sl->dev, "mutex locked");

 if (w1_reset_select_slave(sl)) {
  mutex_unlock(&sl->master->bus_mutex);
  return -EIO;
 }

 wrbuf[0] = W1_F29_FUNC_READ_PIO_REGS;
 wrbuf[1] = address;
 wrbuf[2] = 0;
 w1_write_block(sl->master, wrbuf, 3);
 *buf = w1_read_8(sl->master);

 mutex_unlock(&sl->master->bus_mutex);
 dev_dbg(&sl->dev, "mutex unlocked");
 return 1;
}
