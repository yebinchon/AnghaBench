
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_pix_format {int sizeimage; } ;
struct TYPE_3__ {struct v4l2_pix_format pix; } ;
struct TYPE_4__ {TYPE_1__ fmt; } ;
struct imx_media_video_dev {TYPE_2__ fmt; } ;
struct imx7_csi {int last_eof; int last_eof_completion; scalar_t__ frame_sequence; int sd; int underrun_buf; int dev; struct imx_media_video_dev* vdev; } ;


 int imx7_csi_setup_vb2_buf (struct imx7_csi*) ;
 int imx_media_alloc_dma_buf (int ,int *,int ) ;
 int init_completion (int *) ;
 int v4l2_warn (int *,char*) ;

__attribute__((used)) static int imx7_csi_dma_start(struct imx7_csi *csi)
{
 struct imx_media_video_dev *vdev = csi->vdev;
 struct v4l2_pix_format *out_pix = &vdev->fmt.fmt.pix;
 int ret;

 ret = imx_media_alloc_dma_buf(csi->dev, &csi->underrun_buf,
          out_pix->sizeimage);
 if (ret < 0) {
  v4l2_warn(&csi->sd, "consider increasing the CMA area\n");
  return ret;
 }

 csi->frame_sequence = 0;
 csi->last_eof = 0;
 init_completion(&csi->last_eof_completion);

 imx7_csi_setup_vb2_buf(csi);

 return 0;
}
