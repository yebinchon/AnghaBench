
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_pix_format_mplane {int xfer_func; int quantization; int ycbcr_enc; int colorspace; int field; int pixelformat; } ;
struct hantro_fmt {int fourcc; } ;


 int V4L2_COLORSPACE_JPEG ;
 int V4L2_FIELD_NONE ;
 int V4L2_QUANTIZATION_DEFAULT ;
 int V4L2_XFER_FUNC_DEFAULT ;
 int V4L2_YCBCR_ENC_DEFAULT ;
 int memset (struct v4l2_pix_format_mplane*,int ,int) ;

__attribute__((used)) static void
hantro_reset_fmt(struct v4l2_pix_format_mplane *fmt,
   const struct hantro_fmt *vpu_fmt)
{
 memset(fmt, 0, sizeof(*fmt));

 fmt->pixelformat = vpu_fmt->fourcc;
 fmt->field = V4L2_FIELD_NONE;
 fmt->colorspace = V4L2_COLORSPACE_JPEG,
 fmt->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
 fmt->quantization = V4L2_QUANTIZATION_DEFAULT;
 fmt->xfer_func = V4L2_XFER_FUNC_DEFAULT;
}
