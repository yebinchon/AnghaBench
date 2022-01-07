
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct imx_media_video_dev {int dummy; } ;
struct csi_priv {int sd; struct imx_media_video_dev* vdev; } ;


 int eof_timeout_timer ;
 struct csi_priv* from_timer (int ,struct timer_list*,int ) ;
 int imx_media_capture_device_error (struct imx_media_video_dev*) ;
 struct csi_priv* priv ;
 int v4l2_err (int *,char*) ;

__attribute__((used)) static void csi_idmac_eof_timeout(struct timer_list *t)
{
 struct csi_priv *priv = from_timer(priv, t, eof_timeout_timer);
 struct imx_media_video_dev *vdev = priv->vdev;

 v4l2_err(&priv->sd, "EOF timeout\n");


 imx_media_capture_device_error(vdev);
}
