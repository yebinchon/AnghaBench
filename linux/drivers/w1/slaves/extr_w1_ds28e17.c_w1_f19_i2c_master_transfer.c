
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w1_slave {TYPE_1__* master; } ;
struct i2c_msg {scalar_t__ addr; int flags; scalar_t__ len; scalar_t__* buf; } ;
struct i2c_adapter {scalar_t__ algo_data; } ;
struct TYPE_2__ {int bus_mutex; } ;


 int EIO ;
 int I2C_M_RD ;
 int I2C_M_RECV_LEN ;
 scalar_t__ W1_F19_WRITE_DATA_LIMIT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int w1_f19_i2c_read (struct w1_slave*,scalar_t__,scalar_t__*,scalar_t__) ;
 int w1_f19_i2c_write (struct w1_slave*,scalar_t__,scalar_t__*,scalar_t__,int) ;
 int w1_f19_i2c_write_read (struct w1_slave*,scalar_t__,scalar_t__*,scalar_t__,scalar_t__*,scalar_t__) ;
 scalar_t__ w1_reset_resume_command (TYPE_1__*) ;
 scalar_t__ w1_reset_select_slave (struct w1_slave*) ;

__attribute__((used)) static int w1_f19_i2c_master_transfer(struct i2c_adapter *adapter,
 struct i2c_msg *msgs, int num)
{
 struct w1_slave *sl = (struct w1_slave *) adapter->algo_data;
 int i = 0;
 int result = 0;


 mutex_lock(&sl->master->bus_mutex);


 if (w1_reset_select_slave(sl)) {
  i = -EIO;
  goto error;
 }


 while (i < num) {




  if (i < (num-1)
   && msgs[i].addr == msgs[i+1].addr
   && !(msgs[i].flags & I2C_M_RD)
   && (msgs[i+1].flags & I2C_M_RD)
   && (msgs[i].len <= W1_F19_WRITE_DATA_LIMIT)) {




   result = w1_f19_i2c_write_read(sl, msgs[i].addr,
    msgs[i].buf, msgs[i].len,
    msgs[i+1].buf, msgs[i+1].len);
   if (result < 0) {
    i = result;
    goto error;
   }







   if (msgs[i+1].flags & I2C_M_RECV_LEN) {
    result = w1_f19_i2c_read(sl, msgs[i+1].addr,
     &(msgs[i+1].buf[1]), msgs[i+1].buf[0]);
    if (result < 0) {
     i = result;
     goto error;
    }
   }


   i++;
  } else if (msgs[i].flags & I2C_M_RD) {

   result = w1_f19_i2c_read(sl, msgs[i].addr,
    msgs[i].buf, msgs[i].len);
   if (result < 0) {
    i = result;
    goto error;
   }







   if (msgs[i].flags & I2C_M_RECV_LEN) {
    result = w1_f19_i2c_read(sl,
     msgs[i].addr,
     &(msgs[i].buf[1]),
     msgs[i].buf[0]);
    if (result < 0) {
     i = result;
     goto error;
    }
   }
  } else {





   result = w1_f19_i2c_write(sl,
    msgs[i].addr,
    msgs[i].buf,
    msgs[i].len,
    i == (num-1));
   if (result < 0) {
    i = result;
    goto error;
   }
  }


  i++;


  if (i < num) {

   if (w1_reset_resume_command(sl->master)) {
    i = -EIO;
    goto error;
   }
  }
 }

error:

 mutex_unlock(&sl->master->bus_mutex);


 return i;
}
