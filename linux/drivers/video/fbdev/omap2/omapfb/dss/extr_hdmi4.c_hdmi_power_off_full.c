
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct omap_overlay_manager {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_5__ {int pll; } ;
struct TYPE_4__ {struct omap_overlay_manager* manager; } ;
struct TYPE_6__ {TYPE_2__ pll; int wp; TYPE_1__ output; } ;


 int HDMI_PHYPWRCMD_OFF ;
 int dss_mgr_disable (struct omap_overlay_manager*) ;
 int dss_pll_disable (int *) ;
 TYPE_3__ hdmi ;
 int hdmi_power_off_core (struct omap_dss_device*) ;
 int hdmi_wp_clear_irqenable (int *,int) ;
 int hdmi_wp_set_phy_pwr (int *,int ) ;
 int hdmi_wp_video_stop (int *) ;

__attribute__((used)) static void hdmi_power_off_full(struct omap_dss_device *dssdev)
{
 struct omap_overlay_manager *mgr = hdmi.output.manager;

 hdmi_wp_clear_irqenable(&hdmi.wp, 0xffffffff);

 dss_mgr_disable(mgr);

 hdmi_wp_video_stop(&hdmi.wp);

 hdmi_wp_set_phy_pwr(&hdmi.wp, HDMI_PHYPWRCMD_OFF);

 dss_pll_disable(&hdmi.pll.pll);

 hdmi_power_off_core(dssdev);
}
