
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int bus_info; int card; int driver; } ;
struct most_video_dev {TYPE_1__* iface; } ;
struct file {int dummy; } ;
struct comp_fh {struct most_video_dev* mdev; } ;
struct TYPE_2__ {char* description; } ;


 int snprintf (int ,int,char*,char*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
      struct v4l2_capability *cap)
{
 struct comp_fh *fh = priv;
 struct most_video_dev *mdev = fh->mdev;

 strlcpy(cap->driver, "v4l2_component", sizeof(cap->driver));
 strlcpy(cap->card, "MOST", sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info),
   "%s", mdev->iface->description);
 return 0;
}
