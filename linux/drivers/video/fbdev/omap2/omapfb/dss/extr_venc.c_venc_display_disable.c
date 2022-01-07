
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {int venc_lock; } ;


 int DSSDBG (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ venc ;
 int venc_power_off (struct omap_dss_device*) ;

__attribute__((used)) static void venc_display_disable(struct omap_dss_device *dssdev)
{
 DSSDBG("venc_display_disable\n");

 mutex_lock(&venc.venc_lock);

 venc_power_off(dssdev);

 mutex_unlock(&venc.venc_lock);
}
