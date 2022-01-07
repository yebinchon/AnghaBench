
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {int lock; } ;


 int DSSDBG (char*) ;
 TYPE_1__ hdmi ;
 int hdmi_power_off_core (struct omap_dss_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void hdmi_core_disable(struct omap_dss_device *dssdev)
{
 DSSDBG("Enter omapdss_hdmi_core_disable\n");

 mutex_lock(&hdmi.lock);

 hdmi_power_off_core(dssdev);

 mutex_unlock(&hdmi.lock);
}
