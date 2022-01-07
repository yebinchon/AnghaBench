
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vdic_priv {int active_input_pad; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int field; int height; int width; int code; } ;
struct v4l2_subdev_format {int pad; struct v4l2_mbus_framefmt format; int which; } ;
struct imx_media_pixfmt {int * codes; } ;


 int CS_SEL_YUV ;
 int H_ALIGN ;
 int MAX_H_VDIC ;
 int MAX_W_VDIC ;
 int MIN_H ;
 int MIN_W ;
 int S_ALIGN ;
 int V4L2_FIELD_HAS_BOTH (int ) ;
 int V4L2_FIELD_NONE ;
 int V4L2_FIELD_SEQ_TB ;



 int W_ALIGN ;
 struct v4l2_mbus_framefmt* __vdic_get_fmt (struct vdic_priv*,struct v4l2_subdev_pad_config*,int ,int ) ;
 int imx_media_enum_ipu_format (int *,int ,int ) ;
 struct imx_media_pixfmt* imx_media_find_ipu_format (int ,int ) ;
 int imx_media_try_colorimetry (struct v4l2_mbus_framefmt*,int) ;
 int v4l_bound_align_image (int *,int ,int ,int ,int *,int ,int ,int ,int ) ;

__attribute__((used)) static void vdic_try_fmt(struct vdic_priv *priv,
    struct v4l2_subdev_pad_config *cfg,
    struct v4l2_subdev_format *sdformat,
    const struct imx_media_pixfmt **cc)
{
 struct v4l2_mbus_framefmt *infmt;

 *cc = imx_media_find_ipu_format(sdformat->format.code, CS_SEL_YUV);
 if (!*cc) {
  u32 code;

  imx_media_enum_ipu_format(&code, 0, CS_SEL_YUV);
  *cc = imx_media_find_ipu_format(code, CS_SEL_YUV);
  sdformat->format.code = (*cc)->codes[0];
 }

 infmt = __vdic_get_fmt(priv, cfg, priv->active_input_pad,
          sdformat->which);

 switch (sdformat->pad) {
 case 128:
  sdformat->format = *infmt;

  sdformat->format.field = V4L2_FIELD_NONE;
  break;
 case 130:
 case 129:
  v4l_bound_align_image(&sdformat->format.width,
          MIN_W, MAX_W_VDIC, W_ALIGN,
          &sdformat->format.height,
          MIN_H, MAX_H_VDIC, H_ALIGN, S_ALIGN);


  if (!V4L2_FIELD_HAS_BOTH(sdformat->format.field))
   sdformat->format.field = V4L2_FIELD_SEQ_TB;
  break;
 }

 imx_media_try_colorimetry(&sdformat->format, 1);
}
