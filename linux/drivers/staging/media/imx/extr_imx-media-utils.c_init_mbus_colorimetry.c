
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_framefmt {int ycbcr_enc; int colorspace; int quantization; int xfer_func; } ;
struct imx_media_pixfmt {scalar_t__ cs; } ;


 scalar_t__ IPUV3_COLORSPACE_RGB ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_MAP_QUANTIZATION_DEFAULT (int,int ,int ) ;
 int V4L2_MAP_XFER_FUNC_DEFAULT (int ) ;
 int V4L2_MAP_YCBCR_ENC_DEFAULT (int ) ;

__attribute__((used)) static void init_mbus_colorimetry(struct v4l2_mbus_framefmt *mbus,
      const struct imx_media_pixfmt *fmt)
{
 mbus->colorspace = (fmt->cs == IPUV3_COLORSPACE_RGB) ?
  V4L2_COLORSPACE_SRGB : V4L2_COLORSPACE_SMPTE170M;
 mbus->xfer_func = V4L2_MAP_XFER_FUNC_DEFAULT(mbus->colorspace);
 mbus->ycbcr_enc = V4L2_MAP_YCBCR_ENC_DEFAULT(mbus->colorspace);
 mbus->quantization =
  V4L2_MAP_QUANTIZATION_DEFAULT(fmt->cs == IPUV3_COLORSPACE_RGB,
           mbus->colorspace,
           mbus->ycbcr_enc);
}
