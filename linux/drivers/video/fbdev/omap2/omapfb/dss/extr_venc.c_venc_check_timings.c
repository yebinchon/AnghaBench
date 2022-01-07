
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_video_timings {int dummy; } ;
struct omap_dss_device {int dummy; } ;


 int DSSDBG (char*) ;
 int EINVAL ;
 scalar_t__ memcmp (int *,struct omap_video_timings*,int) ;
 int omap_dss_ntsc_timings ;
 int omap_dss_pal_timings ;

__attribute__((used)) static int venc_check_timings(struct omap_dss_device *dssdev,
  struct omap_video_timings *timings)
{
 DSSDBG("venc_check_timings\n");

 if (memcmp(&omap_dss_pal_timings, timings, sizeof(*timings)) == 0)
  return 0;

 if (memcmp(&omap_dss_ntsc_timings, timings, sizeof(*timings)) == 0)
  return 0;

 return -EINVAL;
}
