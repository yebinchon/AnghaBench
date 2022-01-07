
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {int lock; } ;


 int DSSDBG (char*) ;
 int DSSERR (char*) ;
 TYPE_1__ hdmi ;
 int hdmi_power_on_core (struct omap_dss_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hdmi_core_enable(struct omap_dss_device *dssdev)
{
 int r = 0;

 DSSDBG("ENTER omapdss_hdmi_core_enable\n");

 mutex_lock(&hdmi.lock);

 r = hdmi_power_on_core(dssdev);
 if (r) {
  DSSERR("failed to power on device\n");
  goto err0;
 }

 mutex_unlock(&hdmi.lock);
 return 0;

err0:
 mutex_unlock(&hdmi.lock);
 return r;
}
