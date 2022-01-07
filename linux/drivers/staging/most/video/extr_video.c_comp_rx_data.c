
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct most_video_dev {int wait_data; int list_lock; int pending_mbos; int mute; } ;
struct mbo {int list; int hdm_channel_id; int ifp; } ;


 int EIO ;
 struct most_video_dev* get_comp_dev (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int comp_rx_data(struct mbo *mbo)
{
 unsigned long flags;
 struct most_video_dev *mdev =
  get_comp_dev(mbo->ifp, mbo->hdm_channel_id);

 if (!mdev)
  return -EIO;

 spin_lock_irqsave(&mdev->list_lock, flags);
 if (unlikely(mdev->mute)) {
  spin_unlock_irqrestore(&mdev->list_lock, flags);
  return -EIO;
 }

 list_add_tail(&mbo->list, &mdev->pending_mbos);
 spin_unlock_irqrestore(&mdev->list_lock, flags);
 wake_up_interruptible(&mdev->wait_data);
 return 0;
}
