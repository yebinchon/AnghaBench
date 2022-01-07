
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_pix_format {scalar_t__ ycbcr_enc; scalar_t__ quantization; int colorspace; } ;
struct ipu_image {int rect; struct v4l2_pix_format pix; } ;
struct ipu_csc_scaler_q_data {int rect; struct v4l2_pix_format cur_fmt; } ;


 void* V4L2_MAP_YCBCR_ENC_DEFAULT (int ) ;
 scalar_t__ V4L2_QUANTIZATION_DEFAULT ;
 scalar_t__ V4L2_YCBCR_ENC_DEFAULT ;

__attribute__((used)) static void ipu_image_from_q_data(struct ipu_image *im,
      struct ipu_csc_scaler_q_data *q_data)
{
 struct v4l2_pix_format *fmt = &q_data->cur_fmt;

 im->pix = *fmt;
 if (fmt->ycbcr_enc == V4L2_YCBCR_ENC_DEFAULT)
  im->pix.ycbcr_enc = V4L2_MAP_YCBCR_ENC_DEFAULT(fmt->colorspace);
 if (fmt->quantization == V4L2_QUANTIZATION_DEFAULT)
  im->pix.ycbcr_enc = V4L2_MAP_YCBCR_ENC_DEFAULT(fmt->colorspace);
 im->rect = q_data->rect;
}
