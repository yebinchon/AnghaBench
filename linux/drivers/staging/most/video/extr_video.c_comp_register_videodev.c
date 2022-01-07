
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char* name; } ;
struct most_video_dev {TYPE_1__* vdev; TYPE_5__ v4l2_dev; int lock; int wait_data; } ;
struct TYPE_7__ {int name; int * lock; TYPE_5__* v4l2_dev; } ;


 int ENOMEM ;
 int VFL_TYPE_GRABBER ;
 TYPE_1__ comp_videodev_template ;
 int init_waitqueue_head (int *) ;
 int snprintf (int ,int,char*,char*) ;
 int v4l2_err (TYPE_5__*,char*,int) ;
 TYPE_1__* video_device_alloc () ;
 int video_device_release (TYPE_1__*) ;
 int video_register_device (TYPE_1__*,int ,int) ;
 int video_set_drvdata (TYPE_1__*,struct most_video_dev*) ;

__attribute__((used)) static int comp_register_videodev(struct most_video_dev *mdev)
{
 int ret;

 init_waitqueue_head(&mdev->wait_data);


 mdev->vdev = video_device_alloc();
 if (!mdev->vdev)
  return -ENOMEM;


 *mdev->vdev = comp_videodev_template;
 mdev->vdev->v4l2_dev = &mdev->v4l2_dev;
 mdev->vdev->lock = &mdev->lock;
 snprintf(mdev->vdev->name, sizeof(mdev->vdev->name), "MOST: %s",
   mdev->v4l2_dev.name);


 video_set_drvdata(mdev->vdev, mdev);
 ret = video_register_device(mdev->vdev, VFL_TYPE_GRABBER, -1);
 if (ret) {
  v4l2_err(&mdev->v4l2_dev, "video_register_device failed (%d)\n",
    ret);
  video_device_release(mdev->vdev);
 }

 return ret;
}
