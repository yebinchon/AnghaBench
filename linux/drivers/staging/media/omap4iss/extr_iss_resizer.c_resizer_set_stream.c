
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int entity; } ;
struct iss_video {int dmaqueue_flags; } ;
struct iss_resizer_device {int state; int output; int stopping; int wait; struct iss_video video_out; } ;
struct iss_device {int dummy; } ;


 int ETIMEDOUT ;


 int ISS_VIDEO_DMAQUEUE_QUEUED ;
 int OMAP4_ISS_ISP_SUBCLK_RSZ ;
 int OMAP4_ISS_MEM_ISP_RESIZER ;
 int RESIZER_OUTPUT_MEMORY ;
 int RSZ_GCK_MMR ;
 int RSZ_GCK_MMR_MMR ;
 int RSZ_GCK_SDR ;
 int RSZ_GCK_SDR_CORE ;
 int RSZ_SYSCONFIG ;
 int RSZ_SYSCONFIG_RSZA_CLK_EN ;
 int atomic_set (int *,int ) ;
 int iss_reg_clr (struct iss_device*,int ,int ,int ) ;
 int iss_reg_set (struct iss_device*,int ,int ,int ) ;
 int iss_video_dmaqueue_flags_clr (struct iss_video*) ;
 int omap4iss_isp_subclk_disable (struct iss_device*,int ) ;
 int omap4iss_isp_subclk_enable (struct iss_device*,int ) ;
 int omap4iss_module_sync_idle (int *,int *,int *) ;
 int resizer_configure (struct iss_resizer_device*) ;
 int resizer_enable (struct iss_resizer_device*,int) ;
 int resizer_print_status (struct iss_resizer_device*) ;
 struct iss_device* to_iss_device (struct iss_resizer_device*) ;
 struct iss_resizer_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int resizer_set_stream(struct v4l2_subdev *sd, int enable)
{
 struct iss_resizer_device *resizer = v4l2_get_subdevdata(sd);
 struct iss_device *iss = to_iss_device(resizer);
 struct iss_video *video_out = &resizer->video_out;
 int ret = 0;

 if (resizer->state == 128) {
  if (enable == 128)
   return 0;

  omap4iss_isp_subclk_enable(iss, OMAP4_ISS_ISP_SUBCLK_RSZ);

  iss_reg_set(iss, OMAP4_ISS_MEM_ISP_RESIZER, RSZ_GCK_MMR,
       RSZ_GCK_MMR_MMR);
  iss_reg_set(iss, OMAP4_ISS_MEM_ISP_RESIZER, RSZ_GCK_SDR,
       RSZ_GCK_SDR_CORE);


  iss_reg_set(iss, OMAP4_ISS_MEM_ISP_RESIZER, RSZ_SYSCONFIG,
       RSZ_SYSCONFIG_RSZA_CLK_EN);
 }

 switch (enable) {
 case 129:

  resizer_configure(resizer);
  resizer_print_status(resizer);







  if (resizer->output & RESIZER_OUTPUT_MEMORY &&
      !(video_out->dmaqueue_flags & ISS_VIDEO_DMAQUEUE_QUEUED))
   break;

  atomic_set(&resizer->stopping, 0);
  resizer_enable(resizer, 1);
  iss_video_dmaqueue_flags_clr(video_out);
  break;

 case 128:
  if (resizer->state == 128)
   return 0;
  if (omap4iss_module_sync_idle(&sd->entity, &resizer->wait,
           &resizer->stopping))
   ret = -ETIMEDOUT;

  resizer_enable(resizer, 0);
  iss_reg_clr(iss, OMAP4_ISS_MEM_ISP_RESIZER, RSZ_SYSCONFIG,
       RSZ_SYSCONFIG_RSZA_CLK_EN);
  iss_reg_clr(iss, OMAP4_ISS_MEM_ISP_RESIZER, RSZ_GCK_SDR,
       RSZ_GCK_SDR_CORE);
  iss_reg_clr(iss, OMAP4_ISS_MEM_ISP_RESIZER, RSZ_GCK_MMR,
       RSZ_GCK_MMR_MMR);
  omap4iss_isp_subclk_disable(iss, OMAP4_ISS_ISP_SUBCLK_RSZ);
  iss_video_dmaqueue_flags_clr(video_out);
  break;
 }

 resizer->state = enable;
 return ret;
}
