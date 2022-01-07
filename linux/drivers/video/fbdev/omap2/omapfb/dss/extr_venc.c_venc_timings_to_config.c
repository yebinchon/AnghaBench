
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venc_config {int dummy; } ;
struct omap_video_timings {int dummy; } ;


 int BUG () ;
 scalar_t__ memcmp (int *,struct omap_video_timings*,int) ;
 int omap_dss_ntsc_timings ;
 int omap_dss_pal_timings ;
 struct venc_config const venc_config_ntsc_trm ;
 struct venc_config const venc_config_pal_trm ;

__attribute__((used)) static const struct venc_config *venc_timings_to_config(
  struct omap_video_timings *timings)
{
 if (memcmp(&omap_dss_pal_timings, timings, sizeof(*timings)) == 0)
  return &venc_config_pal_trm;

 if (memcmp(&omap_dss_ntsc_timings, timings, sizeof(*timings)) == 0)
  return &venc_config_ntsc_trm;

 BUG();
 return ((void*)0);
}
