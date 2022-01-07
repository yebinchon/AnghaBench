
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ ddr_clk_always_on; } ;
struct dsi_data {TYPE_1__ vm_timings; } ;


 int DSI_VC_CTRL (int) ;
 int DSSDBG (char*,int,int) ;
 int REG_FLD_MOD (struct platform_device*,int ,int,int,int) ;
 int WARN_ON (int) ;
 int dsi_bus_is_locked (struct platform_device*) ;
 int dsi_force_tx_stop_mode_io (struct platform_device*) ;
 struct platform_device* dsi_get_dsidev_from_dssdev (struct omap_dss_device*) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_if_enable (struct platform_device*,int) ;
 int dsi_vc_enable (struct platform_device*,int,int) ;
 int dsi_vc_send_null (struct omap_dss_device*,int) ;

__attribute__((used)) static void dsi_vc_enable_hs(struct omap_dss_device *dssdev, int channel,
  bool enable)
{
 struct platform_device *dsidev = dsi_get_dsidev_from_dssdev(dssdev);
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);

 DSSDBG("dsi_vc_enable_hs(%d, %d)\n", channel, enable);

 WARN_ON(!dsi_bus_is_locked(dsidev));

 dsi_vc_enable(dsidev, channel, 0);
 dsi_if_enable(dsidev, 0);

 REG_FLD_MOD(dsidev, DSI_VC_CTRL(channel), enable, 9, 9);

 dsi_vc_enable(dsidev, channel, 1);
 dsi_if_enable(dsidev, 1);

 dsi_force_tx_stop_mode_io(dsidev);


 if (dsi->vm_timings.ddr_clk_always_on && enable)
  dsi_vc_send_null(dssdev, channel);
}
