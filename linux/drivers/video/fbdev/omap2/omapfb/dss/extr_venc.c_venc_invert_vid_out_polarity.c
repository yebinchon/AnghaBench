
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {int invert_polarity; int venc_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ venc ;

__attribute__((used)) static void venc_invert_vid_out_polarity(struct omap_dss_device *dssdev,
  bool invert_polarity)
{
 mutex_lock(&venc.venc_lock);

 venc.invert_polarity = invert_polarity;

 mutex_unlock(&venc.venc_lock);
}
