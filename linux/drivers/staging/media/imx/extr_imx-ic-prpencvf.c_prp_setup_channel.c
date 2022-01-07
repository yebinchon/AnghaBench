
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct v4l2_mbus_framefmt {int field; } ;
struct prp_priv {int interweave_swap; int ic; struct ipuv3_channel* out_ch; struct ipuv3_channel* rot_out_ch; struct ipuv3_channel* rot_in_ch; struct v4l2_mbus_framefmt* format_mbus; struct imx_media_video_dev* vdev; } ;
struct ipuv3_channel {int dummy; } ;
struct TYPE_8__ {scalar_t__ field; int width; int bytesperline; int pixelformat; int height; } ;
struct TYPE_7__ {int width; int top; int height; } ;
struct ipu_image {TYPE_4__ pix; void* phys1; void* phys0; TYPE_3__ rect; } ;
struct TYPE_5__ {TYPE_4__ pix; } ;
struct TYPE_6__ {TYPE_1__ fmt; } ;
struct imx_media_video_dev {TYPE_3__ compose; TYPE_2__ fmt; struct imx_media_pixfmt* cc; } ;
struct imx_media_pixfmt {int bpp; scalar_t__ planar; } ;
typedef int image ;
typedef enum ipu_rotate_mode { ____Placeholder_ipu_rotate_mode } ipu_rotate_mode ;
typedef void* dma_addr_t ;


 size_t PRPENCVF_SRC_PAD ;
 scalar_t__ V4L2_FIELD_INTERLACED_BT ;
 scalar_t__ V4L2_FIELD_IS_INTERLACED (scalar_t__) ;
 scalar_t__ V4L2_FIELD_IS_SEQUENTIAL (int ) ;



 int ipu_cpmem_interlaced_scan (struct ipuv3_channel*,int,int) ;
 int ipu_cpmem_set_axi_id (struct ipuv3_channel*,int) ;
 int ipu_cpmem_set_block_mode (struct ipuv3_channel*) ;
 int ipu_cpmem_set_burstsize (struct ipuv3_channel*,unsigned int) ;
 int ipu_cpmem_set_image (struct ipuv3_channel*,struct ipu_image*) ;
 int ipu_cpmem_set_rotation (struct ipuv3_channel*,int) ;
 int ipu_cpmem_skip_odd_chroma_rows (struct ipuv3_channel*) ;
 int ipu_cpmem_zero (struct ipuv3_channel*) ;
 int ipu_ic_task_idma_init (int ,struct ipuv3_channel*,int,int ,unsigned int,int) ;
 int ipu_idmac_set_double_buffer (struct ipuv3_channel*,int) ;
 int memset (struct ipu_image*,int ,int) ;
 int swap (int,int ) ;

__attribute__((used)) static int prp_setup_channel(struct prp_priv *priv,
        struct ipuv3_channel *channel,
        enum ipu_rotate_mode rot_mode,
        dma_addr_t addr0, dma_addr_t addr1,
        bool rot_swap_width_height)
{
 struct imx_media_video_dev *vdev = priv->vdev;
 const struct imx_media_pixfmt *outcc;
 struct v4l2_mbus_framefmt *outfmt;
 unsigned int burst_size;
 struct ipu_image image;
 bool interweave;
 int ret;

 outfmt = &priv->format_mbus[PRPENCVF_SRC_PAD];
 outcc = vdev->cc;

 ipu_cpmem_zero(channel);

 memset(&image, 0, sizeof(image));
 image.pix = vdev->fmt.fmt.pix;
 image.rect = vdev->compose;






 interweave = V4L2_FIELD_IS_INTERLACED(image.pix.field) &&
  V4L2_FIELD_IS_SEQUENTIAL(outfmt->field);
 priv->interweave_swap = interweave &&
  image.pix.field == V4L2_FIELD_INTERLACED_BT;

 if (rot_swap_width_height) {
  swap(image.pix.width, image.pix.height);
  swap(image.rect.width, image.rect.height);

  image.pix.bytesperline = outcc->planar ?
   image.pix.width :
   (image.pix.width * outcc->bpp) >> 3;
 }

 if (priv->interweave_swap && channel == priv->out_ch) {

  image.rect.top = 1;
 }

 image.phys0 = addr0;
 image.phys1 = addr1;






 if ((channel == priv->out_ch && !interweave) ||
     channel == priv->rot_out_ch) {
  switch (image.pix.pixelformat) {
  case 129:
  case 128:
  case 130:
   ipu_cpmem_skip_odd_chroma_rows(channel);
   break;
  }
 }

 ret = ipu_cpmem_set_image(channel, &image);
 if (ret)
  return ret;

 if (channel == priv->rot_in_ch ||
     channel == priv->rot_out_ch) {
  burst_size = 8;
  ipu_cpmem_set_block_mode(channel);
 } else {
  burst_size = (image.pix.width & 0xf) ? 8 : 16;
 }

 ipu_cpmem_set_burstsize(channel, burst_size);

 if (rot_mode)
  ipu_cpmem_set_rotation(channel, rot_mode);

 if (interweave && channel == priv->out_ch)
  ipu_cpmem_interlaced_scan(channel,
       priv->interweave_swap ?
       -image.pix.bytesperline :
       image.pix.bytesperline,
       image.pix.pixelformat);

 ret = ipu_ic_task_idma_init(priv->ic, channel,
        image.pix.width, image.pix.height,
        burst_size, rot_mode);
 if (ret)
  return ret;

 ipu_cpmem_set_axi_id(channel, 1);

 ipu_idmac_set_double_buffer(channel, 1);

 return 0;
}
