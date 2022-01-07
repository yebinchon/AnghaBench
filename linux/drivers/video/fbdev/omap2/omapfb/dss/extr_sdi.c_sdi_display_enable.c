
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct omap_video_timings {unsigned long pixelclock; void* sync_pclk_edge; void* data_pclk_edge; } ;
struct omap_dss_device {TYPE_3__* manager; } ;
struct dispc_clock_info {unsigned long lck_div; unsigned long pck_div; } ;
struct TYPE_7__ {int id; } ;
struct TYPE_5__ {struct dispc_clock_info clock_info; } ;
struct TYPE_6__ {int vdds_sdi_reg; int datapairs; TYPE_1__ mgr_config; struct omap_video_timings timings; struct omap_dss_device output; } ;


 int DSSERR (char*) ;
 int DSSWARN (char*,unsigned long,unsigned long) ;
 int ENODEV ;
 void* OMAPDSS_DRIVE_SIG_RISING_EDGE ;
 int dispc_mgr_set_clock_div (int ,struct dispc_clock_info*) ;
 int dispc_runtime_get () ;
 int dispc_runtime_put () ;
 int dss_mgr_enable (TYPE_3__*) ;
 int dss_mgr_set_timings (TYPE_3__*,struct omap_video_timings*) ;
 int dss_sdi_disable () ;
 int dss_sdi_enable () ;
 int dss_sdi_init (int ) ;
 int dss_set_fck_rate (unsigned long) ;
 int mdelay (int) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 TYPE_2__ sdi ;
 int sdi_calc_clock_div (unsigned long,unsigned long*,struct dispc_clock_info*) ;
 int sdi_config_lcd_manager (struct omap_dss_device*) ;

__attribute__((used)) static int sdi_display_enable(struct omap_dss_device *dssdev)
{
 struct omap_dss_device *out = &sdi.output;
 struct omap_video_timings *t = &sdi.timings;
 unsigned long fck;
 struct dispc_clock_info dispc_cinfo;
 unsigned long pck;
 int r;

 if (out->manager == ((void*)0)) {
  DSSERR("failed to enable display: no output/manager\n");
  return -ENODEV;
 }

 r = regulator_enable(sdi.vdds_sdi_reg);
 if (r)
  goto err_reg_enable;

 r = dispc_runtime_get();
 if (r)
  goto err_get_dispc;


 t->data_pclk_edge = OMAPDSS_DRIVE_SIG_RISING_EDGE;
 t->sync_pclk_edge = OMAPDSS_DRIVE_SIG_RISING_EDGE;

 r = sdi_calc_clock_div(t->pixelclock, &fck, &dispc_cinfo);
 if (r)
  goto err_calc_clock_div;

 sdi.mgr_config.clock_info = dispc_cinfo;

 pck = fck / dispc_cinfo.lck_div / dispc_cinfo.pck_div;

 if (pck != t->pixelclock) {
  DSSWARN("Could not find exact pixel clock. Requested %d Hz, got %lu Hz\n",
   t->pixelclock, pck);

  t->pixelclock = pck;
 }


 dss_mgr_set_timings(out->manager, t);

 r = dss_set_fck_rate(fck);
 if (r)
  goto err_set_dss_clock_div;

 sdi_config_lcd_manager(dssdev);
 dispc_mgr_set_clock_div(out->manager->id, &sdi.mgr_config.clock_info);

 dss_sdi_init(sdi.datapairs);
 r = dss_sdi_enable();
 if (r)
  goto err_sdi_enable;
 mdelay(2);

 r = dss_mgr_enable(out->manager);
 if (r)
  goto err_mgr_enable;

 return 0;

err_mgr_enable:
 dss_sdi_disable();
err_sdi_enable:
err_set_dss_clock_div:
err_calc_clock_div:
 dispc_runtime_put();
err_get_dispc:
 regulator_disable(sdi.vdds_sdi_reg);
err_reg_enable:
 return r;
}
