
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_3__ {int field; int height; int width; int xfer_func; int colorspace; int code; } ;
struct v4l2_subdev_format {scalar_t__ pad; TYPE_1__ format; int which; } ;
struct v4l2_mbus_framefmt {int xfer_func; int colorspace; int field; } ;
struct prp_priv {int rot_mode; } ;
struct imx_media_pixfmt {int * codes; } ;


 int CS_SEL_ANY ;
 int H_ALIGN_SINK ;
 int MAX_H_SINK ;
 int MAX_W_SINK ;
 int MIN_H_SINK ;
 int MIN_W_SINK ;
 int PRPENCVF_SINK_PAD ;
 scalar_t__ PRPENCVF_SRC_PAD ;
 int S_ALIGN ;
 int V4L2_FIELD_ANY ;
 int V4L2_FIELD_NONE ;
 int W_ALIGN_SINK ;
 struct v4l2_mbus_framefmt* __prp_get_fmt (struct prp_priv*,struct v4l2_subdev_pad_config*,int ,int ) ;
 int imx_media_enum_ipu_format (int *,int ,int ) ;
 struct imx_media_pixfmt* imx_media_find_ipu_format (int ,int ) ;
 int imx_media_try_colorimetry (TYPE_1__*,int) ;
 int prp_bound_align_output (TYPE_1__*,struct v4l2_mbus_framefmt*,int ) ;
 int v4l_bound_align_image (int *,int ,int ,int ,int *,int ,int ,int ,int ) ;

__attribute__((used)) static void prp_try_fmt(struct prp_priv *priv,
   struct v4l2_subdev_pad_config *cfg,
   struct v4l2_subdev_format *sdformat,
   const struct imx_media_pixfmt **cc)
{
 struct v4l2_mbus_framefmt *infmt;

 *cc = imx_media_find_ipu_format(sdformat->format.code, CS_SEL_ANY);
 if (!*cc) {
  u32 code;

  imx_media_enum_ipu_format(&code, 0, CS_SEL_ANY);
  *cc = imx_media_find_ipu_format(code, CS_SEL_ANY);
  sdformat->format.code = (*cc)->codes[0];
 }

 infmt = __prp_get_fmt(priv, cfg, PRPENCVF_SINK_PAD, sdformat->which);

 if (sdformat->pad == PRPENCVF_SRC_PAD) {
  sdformat->format.field = infmt->field;

  prp_bound_align_output(&sdformat->format, infmt,
           priv->rot_mode);


  sdformat->format.colorspace = infmt->colorspace;
  sdformat->format.xfer_func = infmt->xfer_func;
 } else {
  v4l_bound_align_image(&sdformat->format.width,
          MIN_W_SINK, MAX_W_SINK, W_ALIGN_SINK,
          &sdformat->format.height,
          MIN_H_SINK, MAX_H_SINK, H_ALIGN_SINK,
          S_ALIGN);

  if (sdformat->format.field == V4L2_FIELD_ANY)
   sdformat->format.field = V4L2_FIELD_NONE;
 }

 imx_media_try_colorimetry(&sdformat->format, 1);
}
