
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_device {char* name; } ;
struct v4l2_capability {int bus_info; int card; int driver; } ;
struct hantro_dev {TYPE_1__* dev; } ;
struct file {int dummy; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {TYPE_2__* driver; } ;


 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,char*,int) ;
 struct video_device* video_devdata (struct file*) ;
 struct hantro_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
      struct v4l2_capability *cap)
{
 struct hantro_dev *vpu = video_drvdata(file);
 struct video_device *vdev = video_devdata(file);

 strscpy(cap->driver, vpu->dev->driver->name, sizeof(cap->driver));
 strscpy(cap->card, vdev->name, sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info), "platform: %s",
   vpu->dev->driver->name);
 return 0;
}
