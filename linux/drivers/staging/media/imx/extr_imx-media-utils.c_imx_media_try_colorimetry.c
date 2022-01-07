
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_framefmt {int colorspace; scalar_t__ xfer_func; int ycbcr_enc; int quantization; int code; } ;
struct imx_media_pixfmt {scalar_t__ cs; } ;


 int CS_SEL_ANY ;
 scalar_t__ IPUV3_COLORSPACE_RGB ;
 int V4L2_MAP_QUANTIZATION_DEFAULT (int,int,int ) ;
 scalar_t__ V4L2_MAP_XFER_FUNC_DEFAULT (int) ;
 int V4L2_MAP_YCBCR_ENC_DEFAULT (int) ;
 int V4L2_QUANTIZATION_DEFAULT ;
 scalar_t__ V4L2_XFER_FUNC_DEFAULT ;
 int V4L2_YCBCR_ENC_601 ;
 int V4L2_YCBCR_ENC_709 ;
 int V4L2_YCBCR_ENC_DEFAULT ;
 struct imx_media_pixfmt* imx_media_find_ipu_format (int ,int ) ;
 struct imx_media_pixfmt* imx_media_find_mbus_format (int ,int ,int) ;

void imx_media_try_colorimetry(struct v4l2_mbus_framefmt *tryfmt,
          bool ic_route)
{
 const struct imx_media_pixfmt *cc;
 bool is_rgb = 0;

 cc = imx_media_find_mbus_format(tryfmt->code, CS_SEL_ANY, 1);
 if (!cc)
  cc = imx_media_find_ipu_format(tryfmt->code, CS_SEL_ANY);
 if (cc && cc->cs == IPUV3_COLORSPACE_RGB)
  is_rgb = 1;

 switch (tryfmt->colorspace) {
 case 129:
 case 130:
 case 133:
 case 128:
 case 135:
 case 132:
 case 134:
 case 131:
  break;
 default:
  tryfmt->colorspace = 128;
  break;
 }

 if (tryfmt->xfer_func == V4L2_XFER_FUNC_DEFAULT)
  tryfmt->xfer_func =
   V4L2_MAP_XFER_FUNC_DEFAULT(tryfmt->colorspace);

 if (ic_route) {
  if (tryfmt->ycbcr_enc != V4L2_YCBCR_ENC_601 &&
      tryfmt->ycbcr_enc != V4L2_YCBCR_ENC_709)
   tryfmt->ycbcr_enc = V4L2_YCBCR_ENC_601;
 } else {
  if (tryfmt->ycbcr_enc == V4L2_YCBCR_ENC_DEFAULT) {
   tryfmt->ycbcr_enc =
    V4L2_MAP_YCBCR_ENC_DEFAULT(tryfmt->colorspace);
  }
 }

 if (tryfmt->quantization == V4L2_QUANTIZATION_DEFAULT)
  tryfmt->quantization =
   V4L2_MAP_QUANTIZATION_DEFAULT(is_rgb,
            tryfmt->colorspace,
            tryfmt->ycbcr_enc);
}
