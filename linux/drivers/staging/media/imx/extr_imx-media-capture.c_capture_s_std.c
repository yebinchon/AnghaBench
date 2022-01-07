
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct file {int dummy; } ;
struct capture_priv {int src_sd; int q; } ;


 int EBUSY ;
 int s_std ;
 int v4l2_subdev_call (int ,int ,int ,int ) ;
 scalar_t__ vb2_is_busy (int *) ;
 int video ;
 struct capture_priv* video_drvdata (struct file*) ;

__attribute__((used)) static int capture_s_std(struct file *file, void *fh, v4l2_std_id std)
{
 struct capture_priv *priv = video_drvdata(file);

 if (vb2_is_busy(&priv->q))
  return -EBUSY;

 return v4l2_subdev_call(priv->src_sd, video, s_std, std);
}
