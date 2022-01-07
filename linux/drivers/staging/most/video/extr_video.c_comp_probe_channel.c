
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; int release; } ;
struct most_video_dev {int ch_idx; TYPE_1__ v4l2_dev; int list; struct most_interface* iface; int pending_mbos; int list_lock; int access_ref; int lock; } ;
struct most_interface {int dummy; } ;
struct most_channel_config {scalar_t__ direction; scalar_t__ data_type; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ MOST_CH_ISOC ;
 scalar_t__ MOST_CH_RX ;
 scalar_t__ MOST_CH_SYNC ;
 int atomic_set (int *,int) ;
 int comp_register_videodev (struct most_video_dev*) ;
 int comp_v4l2_dev_release ;
 struct most_video_dev* get_comp_dev (struct most_interface*,int) ;
 int kfree (struct most_video_dev*) ;
 struct most_video_dev* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_lock ;
 int mutex_init (int *) ;
 int pr_err (char*) ;
 int spin_lock_init (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int strlcpy (int ,char*,int) ;
 int v4l2_device_disconnect (TYPE_1__*) ;
 int v4l2_device_put (TYPE_1__*) ;
 int v4l2_device_register (int *,TYPE_1__*) ;
 int video_devices ;

__attribute__((used)) static int comp_probe_channel(struct most_interface *iface, int channel_idx,
         struct most_channel_config *ccfg, char *name,
         char *args)
{
 int ret;
 struct most_video_dev *mdev = get_comp_dev(iface, channel_idx);

 if (mdev) {
  pr_err("channel already linked\n");
  return -EEXIST;
 }

 if (ccfg->direction != MOST_CH_RX) {
  pr_err("wrong direction, expect rx\n");
  return -EINVAL;
 }

 if (ccfg->data_type != MOST_CH_SYNC &&
     ccfg->data_type != MOST_CH_ISOC) {
  pr_err("wrong channel type, expect sync or isoc\n");
  return -EINVAL;
 }

 mdev = kzalloc(sizeof(*mdev), GFP_KERNEL);
 if (!mdev)
  return -ENOMEM;

 mutex_init(&mdev->lock);
 atomic_set(&mdev->access_ref, -1);
 spin_lock_init(&mdev->list_lock);
 INIT_LIST_HEAD(&mdev->pending_mbos);
 mdev->iface = iface;
 mdev->ch_idx = channel_idx;
 mdev->v4l2_dev.release = comp_v4l2_dev_release;


 strlcpy(mdev->v4l2_dev.name, name, sizeof(mdev->v4l2_dev.name));
 ret = v4l2_device_register(((void*)0), &mdev->v4l2_dev);
 if (ret) {
  pr_err("v4l2_device_register() failed\n");
  kfree(mdev);
  return ret;
 }

 ret = comp_register_videodev(mdev);
 if (ret)
  goto err_unreg;

 spin_lock_irq(&list_lock);
 list_add(&mdev->list, &video_devices);
 spin_unlock_irq(&list_lock);
 return 0;

err_unreg:
 v4l2_device_disconnect(&mdev->v4l2_dev);
 v4l2_device_put(&mdev->v4l2_dev);
 return ret;
}
