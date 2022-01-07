
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct v4l2_capability {int bus_info; int card; int driver; } ;
struct TYPE_6__ {TYPE_2__* config; } ;
struct uvc_device {TYPE_3__ func; } ;
struct usb_composite_dev {TYPE_1__* gadget; } ;
struct file {int dummy; } ;
struct TYPE_5__ {struct usb_composite_dev* cdev; } ;
struct TYPE_4__ {char* name; int dev; } ;


 char* dev_name (int *) ;
 int strlcpy (int ,char*,int) ;
 struct video_device* video_devdata (struct file*) ;
 struct uvc_device* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static int
uvc_v4l2_querycap(struct file *file, void *fh, struct v4l2_capability *cap)
{
 struct video_device *vdev = video_devdata(file);
 struct uvc_device *uvc = video_get_drvdata(vdev);
 struct usb_composite_dev *cdev = uvc->func.config->cdev;

 strlcpy(cap->driver, "g_uvc", sizeof(cap->driver));
 strlcpy(cap->card, cdev->gadget->name, sizeof(cap->card));
 strlcpy(cap->bus_info, dev_name(&cdev->gadget->dev),
  sizeof(cap->bus_info));
 return 0;
}
