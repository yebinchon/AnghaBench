
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
struct TYPE_6__ {scalar_t__ id; } ;
struct w1_slave {TYPE_2__* master; TYPE_1__ reg_num; } ;
struct w1_reg_num {scalar_t__ family; scalar_t__ id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int ack ;
struct TYPE_7__ {int bus_mutex; int pullup_duration; } ;


 int EIO ;
 int PAGE_SIZE ;
 int W1_42_CHAIN ;
 int W1_42_CHAIN_DONE ;
 int W1_42_CHAIN_DONE_INV ;
 int W1_42_CHAIN_OFF ;
 int W1_42_CHAIN_OFF_INV ;
 int W1_42_CHAIN_ON ;
 int W1_42_CHAIN_ON_INV ;
 int W1_42_COND_READ ;
 scalar_t__ W1_42_FINISHED_BYTE ;
 scalar_t__ W1_42_SUCCESS_CONFIRM_BYTE ;
 int W1_SKIP_ROM ;
 struct w1_slave* dev_to_w1_slave (struct device*) ;
 int msleep (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ w1_read_8 (TYPE_2__*) ;
 int w1_read_block (TYPE_2__*,scalar_t__*,int) ;
 scalar_t__ w1_reset_bus (TYPE_2__*) ;
 int w1_write_8 (TYPE_2__*,int ) ;

__attribute__((used)) static ssize_t w1_seq_show(struct device *device,
 struct device_attribute *attr, char *buf)
{
 struct w1_slave *sl = dev_to_w1_slave(device);
 ssize_t c = PAGE_SIZE;
 int rv;
 int i;
 u8 ack;
 u64 rn;
 struct w1_reg_num *reg_num;
 int seq = 0;

 mutex_lock(&sl->master->bus_mutex);

 if (w1_reset_bus(sl->master))
  goto error;
 w1_write_8(sl->master, W1_SKIP_ROM);
 w1_write_8(sl->master, W1_42_CHAIN);
 w1_write_8(sl->master, W1_42_CHAIN_ON);
 w1_write_8(sl->master, W1_42_CHAIN_ON_INV);
 msleep(sl->master->pullup_duration);


 ack = w1_read_8(sl->master);
 if (ack != W1_42_SUCCESS_CONFIRM_BYTE)
  goto error;


 for (i = 0; i <= 64; i++) {
  if (w1_reset_bus(sl->master))
   goto error;

  w1_write_8(sl->master, W1_42_COND_READ);
  rv = w1_read_block(sl->master, (u8 *)&rn, 8);
  reg_num = (struct w1_reg_num *) &rn;
  if (reg_num->family == W1_42_FINISHED_BYTE)
   break;
  if (sl->reg_num.id == reg_num->id)
   seq = i;

  w1_write_8(sl->master, W1_42_CHAIN);
  w1_write_8(sl->master, W1_42_CHAIN_DONE);
  w1_write_8(sl->master, W1_42_CHAIN_DONE_INV);
  w1_read_block(sl->master, &ack, sizeof(ack));


  ack = w1_read_8(sl->master);
  if (ack != W1_42_SUCCESS_CONFIRM_BYTE)
   goto error;

 }


 if (w1_reset_bus(sl->master))
  goto error;
 w1_write_8(sl->master, W1_SKIP_ROM);
 w1_write_8(sl->master, W1_42_CHAIN);
 w1_write_8(sl->master, W1_42_CHAIN_OFF);
 w1_write_8(sl->master, W1_42_CHAIN_OFF_INV);


 ack = w1_read_8(sl->master);
 if (ack != W1_42_SUCCESS_CONFIRM_BYTE)
  goto error;
 mutex_unlock(&sl->master->bus_mutex);

 c -= snprintf(buf + PAGE_SIZE - c, c, "%d\n", seq);
 return PAGE_SIZE - c;
error:
 mutex_unlock(&sl->master->bus_mutex);
 return -EIO;
}
