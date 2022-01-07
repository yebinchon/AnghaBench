
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct omap_overlay_manager {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_3__ {struct omap_overlay_manager* manager; } ;
struct TYPE_4__ {scalar_t__ type; int invert_polarity; int vdda_dac_reg; int timings; TYPE_1__ output; } ;


 scalar_t__ OMAP_DSS_VENC_TYPE_COMPOSITE ;
 int VENC_OUTPUT_CONTROL ;
 int dss_mgr_enable (struct omap_overlay_manager*) ;
 int dss_mgr_set_timings (struct omap_overlay_manager*,int *) ;
 int dss_set_dac_pwrdn_bgz (int) ;
 int dss_set_venc_output (scalar_t__) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 TYPE_2__ venc ;
 int venc_reset () ;
 int venc_runtime_get () ;
 int venc_runtime_put () ;
 int venc_timings_to_config (int *) ;
 int venc_write_config (int ) ;
 int venc_write_reg (int ,int) ;

__attribute__((used)) static int venc_power_on(struct omap_dss_device *dssdev)
{
 struct omap_overlay_manager *mgr = venc.output.manager;
 u32 l;
 int r;

 r = venc_runtime_get();
 if (r)
  goto err0;

 venc_reset();
 venc_write_config(venc_timings_to_config(&venc.timings));

 dss_set_venc_output(venc.type);
 dss_set_dac_pwrdn_bgz(1);

 l = 0;

 if (venc.type == OMAP_DSS_VENC_TYPE_COMPOSITE)
  l |= 1 << 1;
 else
  l |= (1 << 0) | (1 << 2);

 if (venc.invert_polarity == 0)
  l |= 1 << 3;

 venc_write_reg(VENC_OUTPUT_CONTROL, l);

 dss_mgr_set_timings(mgr, &venc.timings);

 r = regulator_enable(venc.vdda_dac_reg);
 if (r)
  goto err1;

 r = dss_mgr_enable(mgr);
 if (r)
  goto err2;

 return 0;

err2:
 regulator_disable(venc.vdda_dac_reg);
err1:
 venc_write_reg(VENC_OUTPUT_CONTROL, 0);
 dss_set_dac_pwrdn_bgz(0);

 venc_runtime_put();
err0:
 return r;
}
