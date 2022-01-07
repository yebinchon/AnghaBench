
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int device_caps; int dev; int name; int * lock; int vfl_dir; int release; int * ioctl_ops; int * fops; int * v4l2_dev; } ;
struct TYPE_10__ {int mutex; } ;
struct TYPE_9__ {TYPE_1__* config; } ;
struct uvc_device {TYPE_5__ vdev; TYPE_3__ video; int v4l2_dev; TYPE_2__ func; } ;
struct usb_composite_dev {TYPE_4__* gadget; } ;
struct TYPE_11__ {int name; } ;
struct TYPE_8__ {struct usb_composite_dev* cdev; } ;


 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_OUTPUT ;
 int VFL_DIR_TX ;
 int VFL_TYPE_GRABBER ;
 int dev_attr_function_name ;
 int device_create_file (int *,int *) ;
 int strlcpy (int ,int ,int) ;
 int uvc_v4l2_fops ;
 int uvc_v4l2_ioctl_ops ;
 int video_device_release_empty ;
 int video_register_device (TYPE_5__*,int ,int) ;
 int video_set_drvdata (TYPE_5__*,struct uvc_device*) ;
 int video_unregister_device (TYPE_5__*) ;

__attribute__((used)) static int
uvc_register_video(struct uvc_device *uvc)
{
 struct usb_composite_dev *cdev = uvc->func.config->cdev;
 int ret;


 uvc->vdev.v4l2_dev = &uvc->v4l2_dev;
 uvc->vdev.fops = &uvc_v4l2_fops;
 uvc->vdev.ioctl_ops = &uvc_v4l2_ioctl_ops;
 uvc->vdev.release = video_device_release_empty;
 uvc->vdev.vfl_dir = VFL_DIR_TX;
 uvc->vdev.lock = &uvc->video.mutex;
 uvc->vdev.device_caps = V4L2_CAP_VIDEO_OUTPUT | V4L2_CAP_STREAMING;
 strlcpy(uvc->vdev.name, cdev->gadget->name, sizeof(uvc->vdev.name));

 video_set_drvdata(&uvc->vdev, uvc);

 ret = video_register_device(&uvc->vdev, VFL_TYPE_GRABBER, -1);
 if (ret < 0)
  return ret;

 ret = device_create_file(&uvc->vdev.dev, &dev_attr_function_name);
 if (ret < 0) {
  video_unregister_device(&uvc->vdev);
  return ret;
 }

 return 0;
}
