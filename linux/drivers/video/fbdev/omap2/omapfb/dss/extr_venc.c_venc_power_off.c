
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_overlay_manager {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_3__ {struct omap_overlay_manager* manager; } ;
struct TYPE_4__ {int vdda_dac_reg; TYPE_1__ output; } ;


 int VENC_OUTPUT_CONTROL ;
 int dss_mgr_disable (struct omap_overlay_manager*) ;
 int dss_set_dac_pwrdn_bgz (int ) ;
 int regulator_disable (int ) ;
 TYPE_2__ venc ;
 int venc_runtime_put () ;
 int venc_write_reg (int ,int ) ;

__attribute__((used)) static void venc_power_off(struct omap_dss_device *dssdev)
{
 struct omap_overlay_manager *mgr = venc.output.manager;

 venc_write_reg(VENC_OUTPUT_CONTROL, 0);
 dss_set_dac_pwrdn_bgz(0);

 dss_mgr_disable(mgr);

 regulator_disable(venc.vdda_dac_reg);

 venc_runtime_put();
}
