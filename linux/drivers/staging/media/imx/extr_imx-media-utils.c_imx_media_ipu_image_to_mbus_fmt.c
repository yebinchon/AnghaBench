
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_mbus_framefmt {int quantization; int ycbcr_enc; int xfer_func; int colorspace; int field; int code; int height; int width; } ;
struct TYPE_2__ {int quantization; int ycbcr_enc; int xfer_func; int colorspace; int field; int height; int width; int pixelformat; } ;
struct ipu_image {TYPE_1__ pix; } ;
struct imx_media_pixfmt {int * codes; } ;


 int CS_SEL_ANY ;
 int EINVAL ;
 struct imx_media_pixfmt* imx_media_find_format (int ,int ,int) ;
 int memset (struct v4l2_mbus_framefmt*,int ,int) ;

int imx_media_ipu_image_to_mbus_fmt(struct v4l2_mbus_framefmt *mbus,
        struct ipu_image *image)
{
 const struct imx_media_pixfmt *fmt;

 fmt = imx_media_find_format(image->pix.pixelformat, CS_SEL_ANY, 1);
 if (!fmt)
  return -EINVAL;

 memset(mbus, 0, sizeof(*mbus));
 mbus->width = image->pix.width;
 mbus->height = image->pix.height;
 mbus->code = fmt->codes[0];
 mbus->field = image->pix.field;
 mbus->colorspace = image->pix.colorspace;
 mbus->xfer_func = image->pix.xfer_func;
 mbus->ycbcr_enc = image->pix.ycbcr_enc;
 mbus->quantization = image->pix.quantization;

 return 0;
}
