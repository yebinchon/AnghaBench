
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int height; int width; int top; int left; } ;
struct v4l2_selection {int target; TYPE_5__ r; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int height; int width; } ;
struct TYPE_7__ {TYPE_1__ pix; } ;
struct TYPE_8__ {TYPE_2__ fmt; } ;
struct TYPE_9__ {TYPE_3__ fmt; TYPE_5__ compose; } ;
struct capture_priv {TYPE_4__ vdev; } ;


 int EINVAL ;




 struct capture_priv* video_drvdata (struct file*) ;

__attribute__((used)) static int capture_g_selection(struct file *file, void *fh,
          struct v4l2_selection *s)
{
 struct capture_priv *priv = video_drvdata(file);

 switch (s->target) {
 case 131:
 case 129:
 case 130:

  s->r = priv->vdev.compose;
  break;
 case 128:





  s->r.left = 0;
  s->r.top = 0;
  s->r.width = priv->vdev.fmt.fmt.pix.width;
  s->r.height = priv->vdev.fmt.fmt.pix.height;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
