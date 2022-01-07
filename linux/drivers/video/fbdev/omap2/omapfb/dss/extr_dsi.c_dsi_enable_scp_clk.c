
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dsi_data {int scp_clk_refcount; } ;


 int DSI_CLK_CTRL ;
 int REG_FLD_MOD (struct platform_device*,int ,int,int,int) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;

__attribute__((used)) static void dsi_enable_scp_clk(struct platform_device *dsidev)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);

 if (dsi->scp_clk_refcount++ == 0)
  REG_FLD_MOD(dsidev, DSI_CLK_CTRL, 1, 14, 14);
}
