
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int entity; } ;
struct iss_video {int dmaqueue_flags; } ;
struct iss_device {int dummy; } ;
struct iss_csi2_device {int state; int output; int subclk; int phy; int stopping; int wait; struct iss_video video_out; struct iss_device* iss; } ;


 int CSI2_OUTPUT_MEMORY ;
 int ENODEV ;
 int ETIMEDOUT ;


 int ISS_VIDEO_DMAQUEUE_QUEUED ;
 int atomic_set (int *,int ) ;
 int csi2_configure (struct iss_csi2_device*) ;
 int csi2_ctx_enable (struct iss_csi2_device*,int ,int) ;
 int csi2_if_enable (struct iss_csi2_device*,int) ;
 int csi2_irq_ctx_set (struct iss_csi2_device*,int ) ;
 int csi2_print_status (struct iss_csi2_device*) ;
 int iss_video_dmaqueue_flags_clr (struct iss_video*) ;
 int omap4iss_csiphy_acquire (int ) ;
 int omap4iss_csiphy_config (struct iss_device*,struct v4l2_subdev*) ;
 int omap4iss_csiphy_release (int ) ;
 int omap4iss_module_sync_idle (int *,int *,int *) ;
 int omap4iss_subclk_disable (struct iss_device*,int ) ;
 int omap4iss_subclk_enable (struct iss_device*,int ) ;
 struct iss_csi2_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int csi2_set_stream(struct v4l2_subdev *sd, int enable)
{
 struct iss_csi2_device *csi2 = v4l2_get_subdevdata(sd);
 struct iss_device *iss = csi2->iss;
 struct iss_video *video_out = &csi2->video_out;
 int ret = 0;

 if (csi2->state == 128) {
  if (enable == 128)
   return 0;

  omap4iss_subclk_enable(iss, csi2->subclk);
 }

 switch (enable) {
 case 129: {
  ret = omap4iss_csiphy_config(iss, sd);
  if (ret < 0)
   return ret;

  if (omap4iss_csiphy_acquire(csi2->phy) < 0)
   return -ENODEV;
  csi2_configure(csi2);
  csi2_print_status(csi2);







  if (csi2->output & CSI2_OUTPUT_MEMORY &&
      !(video_out->dmaqueue_flags & ISS_VIDEO_DMAQUEUE_QUEUED))
   break;

  atomic_set(&csi2->stopping, 0);
  csi2_ctx_enable(csi2, 0, 1);
  csi2_if_enable(csi2, 1);
  iss_video_dmaqueue_flags_clr(video_out);
  break;
 }
 case 128:
  if (csi2->state == 128)
   return 0;
  if (omap4iss_module_sync_idle(&sd->entity, &csi2->wait,
           &csi2->stopping))
   ret = -ETIMEDOUT;
  csi2_ctx_enable(csi2, 0, 0);
  csi2_if_enable(csi2, 0);
  csi2_irq_ctx_set(csi2, 0);
  omap4iss_csiphy_release(csi2->phy);
  omap4iss_subclk_disable(iss, csi2->subclk);
  iss_video_dmaqueue_flags_clr(video_out);
  break;
 }

 csi2->state = enable;
 return ret;
}
