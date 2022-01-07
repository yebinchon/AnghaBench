
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {int * manager; } ;
struct TYPE_2__ {int venc_lock; scalar_t__ wss_data; struct omap_dss_device output; } ;


 int DSSDBG (char*) ;
 int DSSERR (char*) ;
 int ENODEV ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ venc ;
 int venc_power_on (struct omap_dss_device*) ;

__attribute__((used)) static int venc_display_enable(struct omap_dss_device *dssdev)
{
 struct omap_dss_device *out = &venc.output;
 int r;

 DSSDBG("venc_display_enable\n");

 mutex_lock(&venc.venc_lock);

 if (out->manager == ((void*)0)) {
  DSSERR("Failed to enable display: no output/manager\n");
  r = -ENODEV;
  goto err0;
 }

 r = venc_power_on(dssdev);
 if (r)
  goto err0;

 venc.wss_data = 0;

 mutex_unlock(&venc.venc_lock);

 return 0;
err0:
 mutex_unlock(&venc.venc_lock);
 return r;
}
