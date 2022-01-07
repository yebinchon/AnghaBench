
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {int pad; int index; int code; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int code; } ;
struct v4l2_fwnode_endpoint {int bus_type; } ;
struct imx_media_pixfmt {int cs; } ;
struct csi_priv {int lock; int sd; } ;





 int CS_SEL_ANY ;
 int CS_SEL_RGB ;
 int CS_SEL_YUV ;
 int EINVAL ;
 int IPUV3_COLORSPACE_YUV ;
 struct v4l2_mbus_framefmt* __csi_get_fmt (struct csi_priv*,struct v4l2_subdev_pad_config*,int,int ) ;
 int csi_get_upstream_endpoint (struct csi_priv*,struct v4l2_fwnode_endpoint*) ;
 int imx_media_enum_ipu_format (int *,int ,int ) ;
 int imx_media_enum_mbus_format (int *,int ,int ,int) ;
 struct imx_media_pixfmt* imx_media_find_mbus_format (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int requires_passthrough (struct v4l2_fwnode_endpoint*,struct v4l2_mbus_framefmt*,struct imx_media_pixfmt const*) ;
 int v4l2_err (int *,char*) ;
 struct csi_priv* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int csi_enum_mbus_code(struct v4l2_subdev *sd,
         struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_mbus_code_enum *code)
{
 struct csi_priv *priv = v4l2_get_subdevdata(sd);
 struct v4l2_fwnode_endpoint upstream_ep = { .bus_type = 0 };
 const struct imx_media_pixfmt *incc;
 struct v4l2_mbus_framefmt *infmt;
 int ret = 0;

 mutex_lock(&priv->lock);

 infmt = __csi_get_fmt(priv, cfg, 130, code->which);
 incc = imx_media_find_mbus_format(infmt->code, CS_SEL_ANY, 1);

 switch (code->pad) {
 case 130:
  ret = imx_media_enum_mbus_format(&code->code, code->index,
       CS_SEL_ANY, 1);
  break;
 case 129:
 case 128:
  ret = csi_get_upstream_endpoint(priv, &upstream_ep);
  if (ret) {
   v4l2_err(&priv->sd, "failed to find upstream endpoint\n");
   goto out;
  }

  if (requires_passthrough(&upstream_ep, infmt, incc)) {
   if (code->index != 0) {
    ret = -EINVAL;
    goto out;
   }
   code->code = infmt->code;
  } else {
   u32 cs_sel = (incc->cs == IPUV3_COLORSPACE_YUV) ?
    CS_SEL_YUV : CS_SEL_RGB;
   ret = imx_media_enum_ipu_format(&code->code,
       code->index,
       cs_sel);
  }
  break;
 default:
  ret = -EINVAL;
 }

out:
 mutex_unlock(&priv->lock);
 return ret;
}
