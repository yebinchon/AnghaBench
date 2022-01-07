
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int entity; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct video_device* vfd; } ;
struct capture_priv {int mutex; int src_sd; TYPE_1__ vdev; } ;


 int ERESTARTSYS ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_err (int ,char*) ;
 int v4l2_fh_open (struct file*) ;
 int v4l2_fh_release (struct file*) ;
 int v4l2_pipeline_pm_use (int *,int) ;
 struct capture_priv* video_drvdata (struct file*) ;

__attribute__((used)) static int capture_open(struct file *file)
{
 struct capture_priv *priv = video_drvdata(file);
 struct video_device *vfd = priv->vdev.vfd;
 int ret;

 if (mutex_lock_interruptible(&priv->mutex))
  return -ERESTARTSYS;

 ret = v4l2_fh_open(file);
 if (ret)
  v4l2_err(priv->src_sd, "v4l2_fh_open failed\n");

 ret = v4l2_pipeline_pm_use(&vfd->entity, 1);
 if (ret)
  v4l2_fh_release(file);

 mutex_unlock(&priv->mutex);
 return ret;
}
