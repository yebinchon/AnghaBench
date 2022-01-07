
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct most_interface {int num_channels; } ;
struct most_dev {int* is_channel_healthy; int* padding_active; int io_mutex; int poll_work_obj; int link_stat_timer; TYPE_3__* conf; int * busy_urbs; TYPE_2__* clear_work; int * channel_lock; TYPE_1__* usb_device; } ;
typedef int spinlock_t ;
struct TYPE_6__ {scalar_t__ data_type; } ;
struct TYPE_5__ {int ws; } ;
struct TYPE_4__ {int dev; } ;


 int ECHRNG ;
 int EIO ;
 scalar_t__ MOST_CH_ASYNC ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int dev_warn (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct most_dev* to_mdev (struct most_interface*) ;
 scalar_t__ unlikely (int) ;
 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static int hdm_poison_channel(struct most_interface *iface, int channel)
{
 struct most_dev *mdev = to_mdev(iface);
 unsigned long flags;
 spinlock_t *lock;

 if (unlikely(!iface)) {
  dev_warn(&mdev->usb_device->dev, "Poison: Bad interface.\n");
  return -EIO;
 }
 if (unlikely(channel < 0 || channel >= iface->num_channels)) {
  dev_warn(&mdev->usb_device->dev, "Channel ID out of range.\n");
  return -ECHRNG;
 }

 lock = mdev->channel_lock + channel;
 spin_lock_irqsave(lock, flags);
 mdev->is_channel_healthy[channel] = 0;
 spin_unlock_irqrestore(lock, flags);

 cancel_work_sync(&mdev->clear_work[channel].ws);

 mutex_lock(&mdev->io_mutex);
 usb_kill_anchored_urbs(&mdev->busy_urbs[channel]);
 if (mdev->padding_active[channel])
  mdev->padding_active[channel] = 0;

 if (mdev->conf[channel].data_type == MOST_CH_ASYNC) {
  del_timer_sync(&mdev->link_stat_timer);
  cancel_work_sync(&mdev->poll_work_obj);
 }
 mutex_unlock(&mdev->io_mutex);
 return 0;
}
