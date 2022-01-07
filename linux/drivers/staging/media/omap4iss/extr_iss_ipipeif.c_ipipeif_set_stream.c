
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int entity; } ;
struct iss_video {int dmaqueue_flags; } ;
struct iss_ipipeif_device {int state; int output; int stopping; int wait; struct iss_video video_out; } ;
struct iss_device {int dummy; } ;


 int ETIMEDOUT ;
 int IPIPEIF_DRV_SUBCLK_MASK ;
 int IPIPEIF_OUTPUT_MEMORY ;


 int ISS_VIDEO_DMAQUEUE_QUEUED ;
 int atomic_set (int *,int ) ;
 int ipipeif_configure (struct iss_ipipeif_device*) ;
 int ipipeif_enable (struct iss_ipipeif_device*,int) ;
 int ipipeif_print_status (struct iss_ipipeif_device*) ;
 int ipipeif_write_enable (struct iss_ipipeif_device*,int) ;
 int iss_video_dmaqueue_flags_clr (struct iss_video*) ;
 int omap4iss_isp_subclk_disable (struct iss_device*,int ) ;
 int omap4iss_isp_subclk_enable (struct iss_device*,int ) ;
 int omap4iss_module_sync_idle (int *,int *,int *) ;
 struct iss_device* to_iss_device (struct iss_ipipeif_device*) ;
 struct iss_ipipeif_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ipipeif_set_stream(struct v4l2_subdev *sd, int enable)
{
 struct iss_ipipeif_device *ipipeif = v4l2_get_subdevdata(sd);
 struct iss_device *iss = to_iss_device(ipipeif);
 struct iss_video *video_out = &ipipeif->video_out;
 int ret = 0;

 if (ipipeif->state == 128) {
  if (enable == 128)
   return 0;

  omap4iss_isp_subclk_enable(iss, IPIPEIF_DRV_SUBCLK_MASK);
 }

 switch (enable) {
 case 129:

  ipipeif_configure(ipipeif);
  ipipeif_print_status(ipipeif);







  if (ipipeif->output & IPIPEIF_OUTPUT_MEMORY &&
      !(video_out->dmaqueue_flags & ISS_VIDEO_DMAQUEUE_QUEUED))
   break;

  atomic_set(&ipipeif->stopping, 0);
  if (ipipeif->output & IPIPEIF_OUTPUT_MEMORY)
   ipipeif_write_enable(ipipeif, 1);
  ipipeif_enable(ipipeif, 1);
  iss_video_dmaqueue_flags_clr(video_out);
  break;

 case 128:
  if (ipipeif->state == 128)
   return 0;
  if (omap4iss_module_sync_idle(&sd->entity, &ipipeif->wait,
           &ipipeif->stopping))
   ret = -ETIMEDOUT;

  if (ipipeif->output & IPIPEIF_OUTPUT_MEMORY)
   ipipeif_write_enable(ipipeif, 0);
  ipipeif_enable(ipipeif, 0);
  omap4iss_isp_subclk_disable(iss, IPIPEIF_DRV_SUBCLK_MASK);
  iss_video_dmaqueue_flags_clr(video_out);
  break;
 }

 ipipeif->state = enable;
 return ret;
}
