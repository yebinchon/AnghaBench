
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u8 ;
struct isl12026 {TYPE_2__* rtc; TYPE_1__* nvm_client; } ;
struct i2c_msg {unsigned int* buf; size_t len; int flags; int addr; } ;
struct TYPE_4__ {int ops_lock; } ;
struct TYPE_3__ {int dev; int adapter; int addr; } ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 int EIO ;
 int ISL12026_NVMEM_WRITE_TIME ;
 int ISL12026_PAGESIZE ;
 int dev_err (int *,char*,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int memcpy (unsigned int*,unsigned int*,size_t) ;
 size_t min (size_t,size_t) ;
 int msleep (int ) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int round_down (unsigned int,int) ;

__attribute__((used)) static int isl12026_nvm_write(void *p, unsigned int offset,
         void *val, size_t bytes)
{
 struct isl12026 *priv = p;
 int ret;
 u8 *v = val;
 size_t chunk_size, num_written;
 u8 payload[ISL12026_PAGESIZE + 2];
 struct i2c_msg msgs[] = {
  {
   .addr = priv->nvm_client->addr,
   .flags = 0,
   .buf = payload
  }
 };





 ret = mutex_lock_interruptible(&priv->rtc->ops_lock);
 if (ret)
  return ret;

 num_written = 0;
 while (bytes) {
  chunk_size = round_down(offset, ISL12026_PAGESIZE) +
   ISL12026_PAGESIZE - offset;
  chunk_size = min(bytes, chunk_size);




  memcpy(payload + 2, v + num_written, chunk_size);
  payload[0] = offset >> 8;
  payload[1] = offset;
  msgs[0].len = chunk_size + 2;
  ret = i2c_transfer(priv->nvm_client->adapter,
       msgs, ARRAY_SIZE(msgs));
  if (ret != ARRAY_SIZE(msgs)) {
   dev_err(&priv->nvm_client->dev,
    "nvmem write error, ret=%d\n", ret);
   ret = ret < 0 ? ret : -EIO;
   break;
  }
  ret = 0;
  bytes -= chunk_size;
  offset += chunk_size;
  num_written += chunk_size;
  msleep(ISL12026_NVMEM_WRITE_TIME);
 }

 mutex_unlock(&priv->rtc->ops_lock);

 return ret;
}
