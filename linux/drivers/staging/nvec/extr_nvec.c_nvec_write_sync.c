
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvec_msg {int dummy; } ;
struct nvec_chip {unsigned char sync_write_pending; int sync_write_mutex; struct nvec_msg* last_sync_msg; int dev; int sync_write; } ;


 int ENOMEM ;
 int ETIMEDOUT ;
 int dev_dbg (int ,char*,...) ;
 int dev_warn (int ,char*) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ nvec_write_async (struct nvec_chip*,unsigned char const*,short) ;
 int wait_for_completion_timeout (int *,int ) ;

int nvec_write_sync(struct nvec_chip *nvec,
      const unsigned char *data, short size,
      struct nvec_msg **msg)
{
 mutex_lock(&nvec->sync_write_mutex);

 *msg = ((void*)0);
 nvec->sync_write_pending = (data[1] << 8) + data[0];

 if (nvec_write_async(nvec, data, size) < 0) {
  mutex_unlock(&nvec->sync_write_mutex);
  return -ENOMEM;
 }

 dev_dbg(nvec->dev, "nvec_sync_write: 0x%04x\n",
  nvec->sync_write_pending);
 if (!(wait_for_completion_timeout(&nvec->sync_write,
       msecs_to_jiffies(2000)))) {
  dev_warn(nvec->dev,
    "timeout waiting for sync write to complete\n");
  mutex_unlock(&nvec->sync_write_mutex);
  return -ETIMEDOUT;
 }

 dev_dbg(nvec->dev, "nvec_sync_write: pong!\n");

 *msg = nvec->last_sync_msg;

 mutex_unlock(&nvec->sync_write_mutex);

 return 0;
}
