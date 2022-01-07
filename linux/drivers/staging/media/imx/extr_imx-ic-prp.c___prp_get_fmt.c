
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct prp_priv {struct v4l2_mbus_framefmt format_mbus; struct imx_ic_priv* ic_priv; } ;
struct imx_ic_priv {int sd; } ;
typedef enum v4l2_subdev_format_whence { ____Placeholder_v4l2_subdev_format_whence } v4l2_subdev_format_whence ;


 int V4L2_SUBDEV_FORMAT_TRY ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (int *,struct v4l2_subdev_pad_config*,unsigned int) ;

__attribute__((used)) static struct v4l2_mbus_framefmt *
__prp_get_fmt(struct prp_priv *priv, struct v4l2_subdev_pad_config *cfg,
       unsigned int pad, enum v4l2_subdev_format_whence which)
{
 struct imx_ic_priv *ic_priv = priv->ic_priv;

 if (which == V4L2_SUBDEV_FORMAT_TRY)
  return v4l2_subdev_get_try_format(&ic_priv->sd, cfg, pad);
 else
  return &priv->format_mbus;
}
