
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_overlay_manager {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_3__ {struct omap_overlay_manager* manager; } ;
struct TYPE_4__ {int vdds_sdi_reg; TYPE_1__ output; } ;


 int dispc_runtime_put () ;
 int dss_mgr_disable (struct omap_overlay_manager*) ;
 int dss_sdi_disable () ;
 int regulator_disable (int ) ;
 TYPE_2__ sdi ;

__attribute__((used)) static void sdi_display_disable(struct omap_dss_device *dssdev)
{
 struct omap_overlay_manager *mgr = sdi.output.manager;

 dss_mgr_disable(mgr);

 dss_sdi_disable();

 dispc_runtime_put();

 regulator_disable(sdi.vdds_sdi_reg);
}
