
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int len; struct i2c_msg* buf; scalar_t__ flags; int addr; } ;
typedef struct i2c_msg u8 ;
struct i2c_client {int adapter; int addr; } ;
struct bq2415x_device {int dev; } ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 int EIO ;
 int bq2415x_i2c_mutex ;
 int i2c_transfer (int ,struct i2c_msg*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (int ) ;

__attribute__((used)) static int bq2415x_i2c_write(struct bq2415x_device *bq, u8 reg, u8 val)
{
 struct i2c_client *client = to_i2c_client(bq->dev);
 struct i2c_msg msg[1];
 u8 data[2];
 int ret;

 data[0] = reg;
 data[1] = val;

 msg[0].addr = client->addr;
 msg[0].flags = 0;
 msg[0].buf = data;
 msg[0].len = ARRAY_SIZE(data);

 mutex_lock(&bq2415x_i2c_mutex);
 ret = i2c_transfer(client->adapter, msg, ARRAY_SIZE(msg));
 mutex_unlock(&bq2415x_i2c_mutex);


 if (ret < 0)
  return ret;
 else if (ret != 1)
  return -EIO;

 return 0;
}
