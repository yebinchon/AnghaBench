
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ucsi_ccg {int dev; struct i2c_client* client; } ;
struct i2c_msg {int flags; unsigned char* buf; scalar_t__ len; int addr; } ;
struct i2c_client {int adapter; int addr; } ;
typedef int rab ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int ,char*,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int ) ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int ,int ) ;
 int memcpy (unsigned char*,int *,int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int put_unaligned_le16 (int ,unsigned char*) ;

__attribute__((used)) static int ccg_write(struct ucsi_ccg *uc, u16 rab, u8 *data, u32 len)
{
 struct i2c_client *client = uc->client;
 unsigned char *buf;
 struct i2c_msg msgs[] = {
  {
   .addr = client->addr,
   .flags = 0x0,
  }
 };
 int status;

 buf = kzalloc(len + sizeof(rab), GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 put_unaligned_le16(rab, buf);
 memcpy(buf + sizeof(rab), data, len);

 msgs[0].len = len + sizeof(rab);
 msgs[0].buf = buf;

 pm_runtime_get_sync(uc->dev);
 status = i2c_transfer(client->adapter, msgs, ARRAY_SIZE(msgs));
 if (status < 0) {
  dev_err(uc->dev, "i2c_transfer failed %d\n", status);
  pm_runtime_put_sync(uc->dev);
  kfree(buf);
  return status;
 }

 pm_runtime_put_sync(uc->dev);
 kfree(buf);
 return 0;
}
