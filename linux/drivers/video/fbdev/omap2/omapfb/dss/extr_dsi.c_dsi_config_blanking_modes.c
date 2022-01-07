
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int blanking_mode; int hfp_blanking_mode; int hbp_blanking_mode; int hsa_blanking_mode; } ;
struct dsi_data {TYPE_1__ vm_timings; } ;


 int DSI_CTRL ;
 int FLD_MOD (int ,int,int,int) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_read_reg (struct platform_device*,int ) ;
 int dsi_write_reg (struct platform_device*,int ,int ) ;

__attribute__((used)) static void dsi_config_blanking_modes(struct platform_device *dsidev)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);
 int blanking_mode = dsi->vm_timings.blanking_mode;
 int hfp_blanking_mode = dsi->vm_timings.hfp_blanking_mode;
 int hbp_blanking_mode = dsi->vm_timings.hbp_blanking_mode;
 int hsa_blanking_mode = dsi->vm_timings.hsa_blanking_mode;
 u32 r;





 r = dsi_read_reg(dsidev, DSI_CTRL);
 r = FLD_MOD(r, blanking_mode, 20, 20);
 r = FLD_MOD(r, hfp_blanking_mode, 21, 21);
 r = FLD_MOD(r, hbp_blanking_mode, 22, 22);
 r = FLD_MOD(r, hsa_blanking_mode, 23, 23);
 dsi_write_reg(dsidev, DSI_CTRL, r);
}
