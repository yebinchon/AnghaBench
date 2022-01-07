
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_format {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct v4l2_format fmt; } ;
struct capture_priv {TYPE_1__ vdev; } ;


 struct capture_priv* video_drvdata (struct file*) ;

__attribute__((used)) static int capture_g_fmt_vid_cap(struct file *file, void *fh,
     struct v4l2_format *f)
{
 struct capture_priv *priv = video_drvdata(file);

 *f = priv->vdev.fmt;

 return 0;
}
