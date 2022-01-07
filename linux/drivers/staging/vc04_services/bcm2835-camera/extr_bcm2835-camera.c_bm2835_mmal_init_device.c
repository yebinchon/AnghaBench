
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int * v4l2_dev; int * queue; int * lock; } ;
struct TYPE_2__ {int vb_vidq; } ;
struct bm2835_mmal_dev {size_t camera_num; TYPE_1__ capture; int mutex; int v4l2_dev; } ;


 int VFL_TYPE_GRABBER ;
 int max_video_height ;
 int max_video_width ;
 int v4l2_info (int *,char*,int ,int ,int ) ;
 struct video_device vdev_template ;
 int video_device_node_name (struct video_device*) ;
 int * video_nr ;
 int video_register_device (struct video_device*,int ,int ) ;
 int video_set_drvdata (struct video_device*,struct bm2835_mmal_dev*) ;

__attribute__((used)) static int bm2835_mmal_init_device(struct bm2835_mmal_dev *dev,
       struct video_device *vfd)
{
 int ret;

 *vfd = vdev_template;

 vfd->v4l2_dev = &dev->v4l2_dev;

 vfd->lock = &dev->mutex;

 vfd->queue = &dev->capture.vb_vidq;


 video_set_drvdata(vfd, dev);

 ret = video_register_device(vfd,
        VFL_TYPE_GRABBER,
        video_nr[dev->camera_num]);
 if (ret < 0)
  return ret;

 v4l2_info(vfd->v4l2_dev,
    "V4L2 device registered as %s - stills mode > %dx%d\n",
    video_device_node_name(vfd),
    max_video_width, max_video_height);

 return 0;
}
