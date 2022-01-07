
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_video_timings {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {int venc_lock; struct omap_video_timings timings; scalar_t__ wss_data; } ;


 int DSSDBG (char*) ;
 int dispc_set_tv_pclk (int) ;
 scalar_t__ memcmp (struct omap_video_timings*,struct omap_video_timings*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ venc ;

__attribute__((used)) static void venc_set_timings(struct omap_dss_device *dssdev,
  struct omap_video_timings *timings)
{
 DSSDBG("venc_set_timings\n");

 mutex_lock(&venc.venc_lock);


 if (memcmp(&venc.timings, timings, sizeof(*timings)))
  venc.wss_data = 0;

 venc.timings = *timings;

 dispc_set_tv_pclk(13500000);

 mutex_unlock(&venc.venc_lock);
}
