
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ trans_mode; } ;
struct dsi_data {TYPE_1__ vm_timings; } ;


 int DSI_CTRL ;
 int FLD_MOD (int ,int,int,int) ;
 scalar_t__ OMAP_DSS_DSI_PULSE_MODE ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_read_reg (struct platform_device*,int ) ;
 int dsi_write_reg (struct platform_device*,int ,int ) ;

__attribute__((used)) static void dsi_config_vp_sync_events(struct platform_device *dsidev)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);
 bool sync_end;
 u32 r;

 if (dsi->vm_timings.trans_mode == OMAP_DSS_DSI_PULSE_MODE)
  sync_end = 1;
 else
  sync_end = 0;

 r = dsi_read_reg(dsidev, DSI_CTRL);
 r = FLD_MOD(r, 1, 9, 9);
 r = FLD_MOD(r, 1, 10, 10);
 r = FLD_MOD(r, 1, 11, 11);
 r = FLD_MOD(r, 1, 15, 15);
 r = FLD_MOD(r, sync_end, 16, 16);
 r = FLD_MOD(r, 1, 17, 17);
 r = FLD_MOD(r, sync_end, 18, 18);
 dsi_write_reg(dsidev, DSI_CTRL, r);
}
