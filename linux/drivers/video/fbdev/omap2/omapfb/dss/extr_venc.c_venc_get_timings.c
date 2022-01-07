
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_video_timings {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {int venc_lock; struct omap_video_timings timings; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ venc ;

__attribute__((used)) static void venc_get_timings(struct omap_dss_device *dssdev,
  struct omap_video_timings *timings)
{
 mutex_lock(&venc.venc_lock);

 *timings = venc.timings;

 mutex_unlock(&venc.venc_lock);
}
