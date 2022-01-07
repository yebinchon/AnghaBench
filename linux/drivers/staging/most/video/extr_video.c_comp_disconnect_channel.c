
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct most_video_dev {int v4l2_dev; int list; } ;
struct most_interface {int dummy; } ;


 int ENOENT ;
 int comp_unregister_videodev (struct most_video_dev*) ;
 struct most_video_dev* get_comp_dev (struct most_interface*,int) ;
 int list_del (int *) ;
 int list_lock ;
 int pr_err (char*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int v4l2_device_disconnect (int *) ;
 int v4l2_device_put (int *) ;

__attribute__((used)) static int comp_disconnect_channel(struct most_interface *iface,
       int channel_idx)
{
 struct most_video_dev *mdev = get_comp_dev(iface, channel_idx);

 if (!mdev) {
  pr_err("no such channel is linked\n");
  return -ENOENT;
 }

 spin_lock_irq(&list_lock);
 list_del(&mdev->list);
 spin_unlock_irq(&list_lock);

 comp_unregister_videodev(mdev);
 v4l2_device_disconnect(&mdev->v4l2_dev);
 v4l2_device_put(&mdev->v4l2_dev);
 return 0;
}
