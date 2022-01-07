
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int bus_info; int card; int driver; } ;
struct file {int dummy; } ;
struct capture_priv {TYPE_1__* src_sd; } ;
struct TYPE_2__ {char* name; } ;


 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,char*,int) ;
 struct capture_priv* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *fh,
      struct v4l2_capability *cap)
{
 struct capture_priv *priv = video_drvdata(file);

 strscpy(cap->driver, "imx-media-capture", sizeof(cap->driver));
 strscpy(cap->card, "imx-media-capture", sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info),
   "platform:%s", priv->src_sd->name);

 return 0;
}
