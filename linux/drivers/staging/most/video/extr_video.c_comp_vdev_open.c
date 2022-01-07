
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int vfl_type; } ;
struct most_video_dev {int access_ref; int v4l2_dev; int ch_idx; int iface; } ;
struct file {struct comp_fh* private_data; } ;
struct comp_fh {int fh; struct most_video_dev* mdev; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;

 int atomic_dec (int *) ;
 int atomic_inc_and_test (int *) ;
 int comp ;
 int kfree (struct comp_fh*) ;
 struct comp_fh* kzalloc (int,int ) ;
 int most_start_channel (int ,int ,int *) ;
 int v4l2_err (int *,char*) ;
 int v4l2_fh_add (int *) ;
 int v4l2_fh_del (int *) ;
 int v4l2_fh_exit (int *) ;
 int v4l2_fh_init (int *,struct video_device*) ;
 struct video_device* video_devdata (struct file*) ;
 struct most_video_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int comp_vdev_open(struct file *filp)
{
 int ret;
 struct video_device *vdev = video_devdata(filp);
 struct most_video_dev *mdev = video_drvdata(filp);
 struct comp_fh *fh;

 switch (vdev->vfl_type) {
 case 128:
  break;
 default:
  return -EINVAL;
 }

 fh = kzalloc(sizeof(*fh), GFP_KERNEL);
 if (!fh)
  return -ENOMEM;

 if (!atomic_inc_and_test(&mdev->access_ref)) {
  v4l2_err(&mdev->v4l2_dev, "too many clients\n");
  ret = -EBUSY;
  goto err_dec;
 }

 fh->mdev = mdev;
 v4l2_fh_init(&fh->fh, vdev);
 filp->private_data = fh;

 v4l2_fh_add(&fh->fh);

 ret = most_start_channel(mdev->iface, mdev->ch_idx, &comp);
 if (ret) {
  v4l2_err(&mdev->v4l2_dev, "most_start_channel() failed\n");
  goto err_rm;
 }

 return 0;

err_rm:
 v4l2_fh_del(&fh->fh);
 v4l2_fh_exit(&fh->fh);

err_dec:
 atomic_dec(&mdev->access_ref);
 kfree(fh);
 return ret;
}
