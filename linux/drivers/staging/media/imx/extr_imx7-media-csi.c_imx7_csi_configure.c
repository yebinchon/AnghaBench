
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_pix_format {int width; scalar_t__ field; int pixelformat; int height; } ;
struct TYPE_4__ {struct v4l2_pix_format pix; } ;
struct TYPE_5__ {TYPE_1__ fmt; } ;
struct imx_media_video_dev {TYPE_2__ fmt; } ;
struct imx7_csi {int is_csi2; TYPE_3__* format_mbus; struct imx_media_video_dev* vdev; } ;
typedef int __u32 ;
struct TYPE_6__ {int code; } ;


 int BIT_BASEADDR_CHG_ERR_EN ;
 int BIT_BASEADDR_SWITCH_EN ;
 int BIT_BASEADDR_SWITCH_SEL ;
 int BIT_DATA_FROM_MIPI ;
 int BIT_GCLK_MODE ;
 int BIT_MIPI_DATA_FORMAT_MASK ;
 int BIT_MIPI_DATA_FORMAT_RAW10 ;
 int BIT_MIPI_DATA_FORMAT_RAW12 ;
 int BIT_MIPI_DATA_FORMAT_RAW14 ;
 int BIT_MIPI_DATA_FORMAT_RAW8 ;
 int BIT_MIPI_DATA_FORMAT_YUV422_8B ;
 int BIT_PIXEL_BIT ;
 int CSI_CSICR1 ;
 int CSI_CSICR18 ;
 int EINVAL ;
 size_t IMX7_CSI_PAD_SINK ;
 int MEDIA_BUS_FMT_SBGGR10_1X10 ;
 int MEDIA_BUS_FMT_SBGGR12_1X12 ;
 int MEDIA_BUS_FMT_SBGGR14_1X14 ;
 scalar_t__ V4L2_FIELD_INTERLACED ;




 int imx7_csi_buf_stride_set (struct imx7_csi*,int) ;
 int imx7_csi_deinterlace_enable (struct imx7_csi*,int) ;
 int imx7_csi_reg_read (struct imx7_csi*,int ) ;
 int imx7_csi_reg_write (struct imx7_csi*,int,int ) ;
 int imx7_csi_set_imagpara (struct imx7_csi*,int,int ) ;

__attribute__((used)) static int imx7_csi_configure(struct imx7_csi *csi)
{
 struct imx_media_video_dev *vdev = csi->vdev;
 struct v4l2_pix_format *out_pix = &vdev->fmt.fmt.pix;
 __u32 in_code = csi->format_mbus[IMX7_CSI_PAD_SINK].code;
 u32 cr1, cr18;
 int width = out_pix->width;

 if (out_pix->field == V4L2_FIELD_INTERLACED) {
  imx7_csi_deinterlace_enable(csi, 1);
  imx7_csi_buf_stride_set(csi, out_pix->width);
 } else {
  imx7_csi_deinterlace_enable(csi, 0);
  imx7_csi_buf_stride_set(csi, 0);
 }

 cr18 = imx7_csi_reg_read(csi, CSI_CSICR18);

 if (!csi->is_csi2) {
  if (out_pix->pixelformat == 129 ||
      out_pix->pixelformat == 128)
   width *= 2;

  imx7_csi_set_imagpara(csi, width, out_pix->height);

  cr18 |= (BIT_BASEADDR_SWITCH_EN | BIT_BASEADDR_SWITCH_SEL |
   BIT_BASEADDR_CHG_ERR_EN);
  imx7_csi_reg_write(csi, cr18, CSI_CSICR18);

  return 0;
 }

 imx7_csi_set_imagpara(csi, width, out_pix->height);

 cr1 = imx7_csi_reg_read(csi, CSI_CSICR1);
 cr1 &= ~BIT_GCLK_MODE;

 cr18 &= BIT_MIPI_DATA_FORMAT_MASK;
 cr18 |= BIT_DATA_FROM_MIPI;

 switch (out_pix->pixelformat) {
 case 129:
 case 128:
  cr18 |= BIT_MIPI_DATA_FORMAT_YUV422_8B;
  break;
 case 130:
  cr18 |= BIT_MIPI_DATA_FORMAT_RAW8;
  break;
 case 131:
  if (in_code == MEDIA_BUS_FMT_SBGGR10_1X10)
   cr18 |= BIT_MIPI_DATA_FORMAT_RAW10;
  else if (in_code == MEDIA_BUS_FMT_SBGGR12_1X12)
   cr18 |= BIT_MIPI_DATA_FORMAT_RAW12;
  else if (in_code == MEDIA_BUS_FMT_SBGGR14_1X14)
   cr18 |= BIT_MIPI_DATA_FORMAT_RAW14;
  cr1 |= BIT_PIXEL_BIT;
  break;
 default:
  return -EINVAL;
 }

 imx7_csi_reg_write(csi, cr1, CSI_CSICR1);
 imx7_csi_reg_write(csi, cr18, CSI_CSICR18);

 return 0;
}
