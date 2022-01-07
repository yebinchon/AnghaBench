
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_3__ {int height; int field; int width; int code; int xfer_func; int colorspace; } ;
struct v4l2_subdev_format {int pad; TYPE_1__ format; int which; } ;
struct v4l2_rect {int height; int width; int top; int left; } ;
struct v4l2_mbus_framefmt {int xfer_func; int colorspace; int code; } ;
struct v4l2_fwnode_endpoint {int dummy; } ;
struct imx_media_pixfmt {int * codes; int cs; } ;
struct csi_priv {int const active_output_pad; } ;





 int CS_SEL_ANY ;
 int CS_SEL_RGB ;
 int CS_SEL_YUV ;
 int H_ALIGN ;
 int IPUV3_COLORSPACE_YUV ;
 int MAX_H ;
 int MAX_W ;
 int MIN_H ;
 int MIN_W ;
 int S_ALIGN ;
 int V4L2_FIELD_ALTERNATE ;
 int W_ALIGN ;
 struct v4l2_mbus_framefmt* __csi_get_fmt (struct csi_priv*,struct v4l2_subdev_pad_config*,int,int ) ;
 int csi_try_crop (struct csi_priv*,struct v4l2_rect*,struct v4l2_subdev_pad_config*,TYPE_1__*,struct v4l2_fwnode_endpoint*) ;
 int csi_try_field (struct csi_priv*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ;
 int imx_media_enum_ipu_format (int *,int ,int ) ;
 int imx_media_enum_mbus_format (int *,int ,int ,int) ;
 struct imx_media_pixfmt* imx_media_find_ipu_format (int ,int ) ;
 struct imx_media_pixfmt* imx_media_find_mbus_format (int ,int ,int) ;
 int imx_media_try_colorimetry (TYPE_1__*,int) ;
 int requires_passthrough (struct v4l2_fwnode_endpoint*,struct v4l2_mbus_framefmt*,struct imx_media_pixfmt const*) ;
 int v4l_bound_align_image (int *,int ,int ,int ,int*,int ,int ,int ,int ) ;

__attribute__((used)) static void csi_try_fmt(struct csi_priv *priv,
   struct v4l2_fwnode_endpoint *upstream_ep,
   struct v4l2_subdev_pad_config *cfg,
   struct v4l2_subdev_format *sdformat,
   struct v4l2_rect *crop,
   struct v4l2_rect *compose,
   const struct imx_media_pixfmt **cc)
{
 const struct imx_media_pixfmt *incc;
 struct v4l2_mbus_framefmt *infmt;
 u32 code;

 infmt = __csi_get_fmt(priv, cfg, 130, sdformat->which);

 switch (sdformat->pad) {
 case 129:
 case 128:
  incc = imx_media_find_mbus_format(infmt->code,
        CS_SEL_ANY, 1);

  sdformat->format.width = compose->width;
  sdformat->format.height = compose->height;

  if (requires_passthrough(upstream_ep, infmt, incc)) {
   sdformat->format.code = infmt->code;
   *cc = incc;
  } else {
   u32 cs_sel = (incc->cs == IPUV3_COLORSPACE_YUV) ?
    CS_SEL_YUV : CS_SEL_RGB;

   *cc = imx_media_find_ipu_format(sdformat->format.code,
       cs_sel);
   if (!*cc) {
    imx_media_enum_ipu_format(&code, 0, cs_sel);
    *cc = imx_media_find_ipu_format(code, cs_sel);
    sdformat->format.code = (*cc)->codes[0];
   }
  }

  csi_try_field(priv, cfg, sdformat);


  sdformat->format.colorspace = infmt->colorspace;
  sdformat->format.xfer_func = infmt->xfer_func;

  break;
 case 130:
  v4l_bound_align_image(&sdformat->format.width, MIN_W, MAX_W,
          W_ALIGN, &sdformat->format.height,
          MIN_H, MAX_H, H_ALIGN, S_ALIGN);

  *cc = imx_media_find_mbus_format(sdformat->format.code,
       CS_SEL_ANY, 1);
  if (!*cc) {
   imx_media_enum_mbus_format(&code, 0,
         CS_SEL_ANY, 0);
   *cc = imx_media_find_mbus_format(code,
       CS_SEL_ANY, 0);
   sdformat->format.code = (*cc)->codes[0];
  }

  csi_try_field(priv, cfg, sdformat);


  crop->left = 0;
  crop->top = 0;
  crop->width = sdformat->format.width;
  crop->height = sdformat->format.height;
  if (sdformat->format.field == V4L2_FIELD_ALTERNATE)
   crop->height *= 2;
  csi_try_crop(priv, crop, cfg, &sdformat->format, upstream_ep);
  compose->left = 0;
  compose->top = 0;
  compose->width = crop->width;
  compose->height = crop->height;

  break;
 }

 imx_media_try_colorimetry(&sdformat->format,
   priv->active_output_pad == 129);
}
