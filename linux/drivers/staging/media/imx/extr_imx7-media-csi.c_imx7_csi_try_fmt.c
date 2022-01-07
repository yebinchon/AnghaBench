
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_2__ {int code; int xfer_func; int colorspace; int height; int width; } ;
struct v4l2_subdev_format {int pad; TYPE_1__ format; int which; } ;
struct v4l2_mbus_framefmt {int xfer_func; int colorspace; int code; int height; int width; } ;
struct imx_media_pixfmt {int * codes; } ;
struct imx7_csi {int dummy; } ;


 int CS_SEL_ANY ;
 int EINVAL ;


 struct v4l2_mbus_framefmt* imx7_csi_get_format (struct imx7_csi*,struct v4l2_subdev_pad_config*,int,int ) ;
 int imx_media_enum_mbus_format (int *,int ,int ,int) ;
 struct imx_media_pixfmt* imx_media_find_mbus_format (int ,int ,int) ;
 int imx_media_try_colorimetry (TYPE_1__*,int) ;

__attribute__((used)) static int imx7_csi_try_fmt(struct imx7_csi *csi,
       struct v4l2_subdev_pad_config *cfg,
       struct v4l2_subdev_format *sdformat,
       const struct imx_media_pixfmt **cc)
{
 const struct imx_media_pixfmt *in_cc;
 struct v4l2_mbus_framefmt *in_fmt;
 u32 code;

 in_fmt = imx7_csi_get_format(csi, cfg, 129,
         sdformat->which);
 if (!in_fmt)
  return -EINVAL;

 switch (sdformat->pad) {
 case 128:
  in_cc = imx_media_find_mbus_format(in_fmt->code, CS_SEL_ANY,
         1);

  sdformat->format.width = in_fmt->width;
  sdformat->format.height = in_fmt->height;
  sdformat->format.code = in_fmt->code;
  *cc = in_cc;

  sdformat->format.colorspace = in_fmt->colorspace;
  sdformat->format.xfer_func = in_fmt->xfer_func;
  break;
 case 129:
  *cc = imx_media_find_mbus_format(sdformat->format.code,
       CS_SEL_ANY, 1);
  if (!*cc) {
   imx_media_enum_mbus_format(&code, 0, CS_SEL_ANY, 0);
   *cc = imx_media_find_mbus_format(code, CS_SEL_ANY,
        0);
   sdformat->format.code = (*cc)->codes[0];
  }
  break;
 default:
  return -EINVAL;
 }

 imx_media_try_colorimetry(&sdformat->format, 0);

 return 0;
}
