
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct prp_priv {struct imx_ic_priv* ic_priv; struct imx_media_video_dev* vdev; } ;
struct imx_media_video_dev {int dummy; } ;
struct imx_ic_priv {int sd; } ;


 int eof_timeout_timer ;
 struct prp_priv* from_timer (int ,struct timer_list*,int ) ;
 int imx_media_capture_device_error (struct imx_media_video_dev*) ;
 struct prp_priv* priv ;
 int v4l2_err (int *,char*) ;

__attribute__((used)) static void prp_eof_timeout(struct timer_list *t)
{
 struct prp_priv *priv = from_timer(priv, t, eof_timeout_timer);
 struct imx_media_video_dev *vdev = priv->vdev;
 struct imx_ic_priv *ic_priv = priv->ic_priv;

 v4l2_err(&ic_priv->sd, "EOF timeout\n");


 imx_media_capture_device_error(vdev);
}
