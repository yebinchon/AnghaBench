
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_pix_format {int width; int height; int bytesperline; int sizeimage; int field; int quantization; int ycbcr_enc; int xfer_func; int colorspace; int pixelformat; } ;
struct v4l2_mbus_framefmt {int code; int width; int height; int field; int quantization; int ycbcr_enc; int xfer_func; int colorspace; } ;
struct imx_media_pixfmt {scalar_t__ cs; int bpp; scalar_t__ planar; int fourcc; scalar_t__ ipufmt; } ;


 int CS_SEL_ANY ;
 int CS_SEL_YUV ;
 int EINVAL ;
 scalar_t__ IPUV3_COLORSPACE_YUV ;
 int imx_media_enum_mbus_format (int*,int ,int ,int) ;
 struct imx_media_pixfmt* imx_media_find_ipu_format (int,int ) ;
 struct imx_media_pixfmt* imx_media_find_mbus_format (int,int ,int) ;
 int round_up (int,int) ;

int imx_media_mbus_fmt_to_pix_fmt(struct v4l2_pix_format *pix,
      struct v4l2_mbus_framefmt *mbus,
      const struct imx_media_pixfmt *cc)
{
 u32 width;
 u32 stride;

 if (!cc) {
  cc = imx_media_find_ipu_format(mbus->code, CS_SEL_ANY);
  if (!cc)
   cc = imx_media_find_mbus_format(mbus->code, CS_SEL_ANY,
       1);
  if (!cc)
   return -EINVAL;
 }





 if (cc->ipufmt && cc->cs == IPUV3_COLORSPACE_YUV) {
  u32 code;

  imx_media_enum_mbus_format(&code, 0, CS_SEL_YUV, 0);
  cc = imx_media_find_mbus_format(code, CS_SEL_YUV, 0);
 }


 width = round_up(mbus->width, 8);


 if (cc->planar)
  stride = round_up(width, 16);
 else
  stride = round_up((width * cc->bpp) >> 3, 8);

 pix->width = width;
 pix->height = mbus->height;
 pix->pixelformat = cc->fourcc;
 pix->colorspace = mbus->colorspace;
 pix->xfer_func = mbus->xfer_func;
 pix->ycbcr_enc = mbus->ycbcr_enc;
 pix->quantization = mbus->quantization;
 pix->field = mbus->field;
 pix->bytesperline = stride;
 pix->sizeimage = cc->planar ? ((stride * pix->height * cc->bpp) >> 3) :
    stride * pix->height;

 return 0;
}
