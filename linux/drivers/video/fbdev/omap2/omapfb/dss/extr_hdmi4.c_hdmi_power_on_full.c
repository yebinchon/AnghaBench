
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct omap_video_timings {int pixelclock; int y_res; int x_res; } ;
struct omap_overlay_manager {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct hdmi_wp_data {int dummy; } ;
struct dss_pll_clock_info {int * clkout; int clkdco; int member_0; } ;
struct TYPE_6__ {int pll; } ;
struct TYPE_7__ {struct omap_video_timings timings; } ;
struct TYPE_5__ {struct omap_overlay_manager* manager; } ;
struct TYPE_8__ {TYPE_2__ pll; struct hdmi_wp_data wp; TYPE_3__ cfg; int core; int phy; TYPE_1__ output; } ;


 int DSSDBG (char*,...) ;
 int DSSERR (char*) ;
 int EIO ;
 int HDMI_IRQ_LINK_CONNECT ;
 int HDMI_IRQ_LINK_DISCONNECT ;
 int HDMI_PHYPWRCMD_LDOON ;
 int HDMI_PHYPWRCMD_OFF ;
 int dispc_enable_gamma_table (int ) ;
 int dss_mgr_enable (struct omap_overlay_manager*) ;
 int dss_mgr_set_timings (struct omap_overlay_manager*,struct omap_video_timings*) ;
 int dss_pll_disable (int *) ;
 int dss_pll_enable (int *) ;
 int dss_pll_set_config (int *,struct dss_pll_clock_info*) ;
 TYPE_4__ hdmi ;
 int hdmi4_configure (int *,struct hdmi_wp_data*,TYPE_3__*) ;
 int hdmi_phy_configure (int *,int ,int ) ;
 int hdmi_pll_compute (TYPE_2__*,int ,struct dss_pll_clock_info*) ;
 int hdmi_power_off_core (struct omap_dss_device*) ;
 int hdmi_power_on_core (struct omap_dss_device*) ;
 int hdmi_wp_clear_irqenable (struct hdmi_wp_data*,int) ;
 int hdmi_wp_set_irqenable (struct hdmi_wp_data*,int) ;
 int hdmi_wp_set_irqstatus (struct hdmi_wp_data*,int) ;
 int hdmi_wp_set_phy_pwr (struct hdmi_wp_data*,int ) ;
 int hdmi_wp_video_start (struct hdmi_wp_data*) ;
 int hdmi_wp_video_stop (struct hdmi_wp_data*) ;

__attribute__((used)) static int hdmi_power_on_full(struct omap_dss_device *dssdev)
{
 int r;
 struct omap_video_timings *p;
 struct omap_overlay_manager *mgr = hdmi.output.manager;
 struct hdmi_wp_data *wp = &hdmi.wp;
 struct dss_pll_clock_info hdmi_cinfo = { 0 };

 r = hdmi_power_on_core(dssdev);
 if (r)
  return r;


 hdmi_wp_clear_irqenable(wp, 0xffffffff);
 hdmi_wp_set_irqstatus(wp, 0xffffffff);

 p = &hdmi.cfg.timings;

 DSSDBG("hdmi_power_on x_res= %d y_res = %d\n", p->x_res, p->y_res);

 hdmi_pll_compute(&hdmi.pll, p->pixelclock, &hdmi_cinfo);

 r = dss_pll_enable(&hdmi.pll.pll);
 if (r) {
  DSSERR("Failed to enable PLL\n");
  goto err_pll_enable;
 }

 r = dss_pll_set_config(&hdmi.pll.pll, &hdmi_cinfo);
 if (r) {
  DSSERR("Failed to configure PLL\n");
  goto err_pll_cfg;
 }

 r = hdmi_phy_configure(&hdmi.phy, hdmi_cinfo.clkdco,
  hdmi_cinfo.clkout[0]);
 if (r) {
  DSSDBG("Failed to configure PHY\n");
  goto err_phy_cfg;
 }

 r = hdmi_wp_set_phy_pwr(wp, HDMI_PHYPWRCMD_LDOON);
 if (r)
  goto err_phy_pwr;

 hdmi4_configure(&hdmi.core, &hdmi.wp, &hdmi.cfg);


 dispc_enable_gamma_table(0);


 dss_mgr_set_timings(mgr, p);

 r = hdmi_wp_video_start(&hdmi.wp);
 if (r)
  goto err_vid_enable;

 r = dss_mgr_enable(mgr);
 if (r)
  goto err_mgr_enable;

 hdmi_wp_set_irqenable(wp,
  HDMI_IRQ_LINK_CONNECT | HDMI_IRQ_LINK_DISCONNECT);

 return 0;

err_mgr_enable:
 hdmi_wp_video_stop(&hdmi.wp);
err_vid_enable:
 hdmi_wp_set_phy_pwr(&hdmi.wp, HDMI_PHYPWRCMD_OFF);
err_phy_pwr:
err_phy_cfg:
err_pll_cfg:
 dss_pll_disable(&hdmi.pll.pll);
err_pll_enable:
 hdmi_power_off_core(dssdev);
 return -EIO;
}
