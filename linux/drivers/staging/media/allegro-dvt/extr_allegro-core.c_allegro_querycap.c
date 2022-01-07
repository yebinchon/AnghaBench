
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct v4l2_capability {int bus_info; int card; int driver; } ;
struct file {int dummy; } ;
struct allegro_dev {TYPE_1__* plat_dev; } ;
struct TYPE_2__ {int dev; } ;


 char* KBUILD_MODNAME ;
 char* dev_name (int *) ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,char*,int) ;
 struct video_device* video_devdata (struct file*) ;
 struct allegro_dev* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static int allegro_querycap(struct file *file, void *fh,
       struct v4l2_capability *cap)
{
 struct video_device *vdev = video_devdata(file);
 struct allegro_dev *dev = video_get_drvdata(vdev);

 strscpy(cap->driver, KBUILD_MODNAME, sizeof(cap->driver));
 strscpy(cap->card, "Allegro DVT Video Encoder", sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info), "platform:%s",
   dev_name(&dev->plat_dev->dev));

 return 0;
}
