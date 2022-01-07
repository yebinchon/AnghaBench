
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {int core_enabled; int vdda_reg; } ;


 TYPE_1__ hdmi ;
 int hdmi_runtime_put () ;
 int regulator_disable (int ) ;

__attribute__((used)) static void hdmi_power_off_core(struct omap_dss_device *dssdev)
{
 hdmi.core_enabled = 0;

 hdmi_runtime_put();
 regulator_disable(hdmi.vdda_reg);
}
