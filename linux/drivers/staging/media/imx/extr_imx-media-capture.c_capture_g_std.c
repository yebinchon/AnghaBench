
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct file {int dummy; } ;
struct capture_priv {int src_sd; } ;


 int g_std ;
 int v4l2_subdev_call (int ,int ,int ,int *) ;
 int video ;
 struct capture_priv* video_drvdata (struct file*) ;

__attribute__((used)) static int capture_g_std(struct file *file, void *fh, v4l2_std_id *std)
{
 struct capture_priv *priv = video_drvdata(file);

 return v4l2_subdev_call(priv->src_sd, video, g_std, std);
}
