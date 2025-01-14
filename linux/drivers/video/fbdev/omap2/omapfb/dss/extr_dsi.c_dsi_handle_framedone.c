
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dsi_data {int framedone_data; int (* framedone_callback ) (int,int ) ;scalar_t__ te_enabled; } ;


 int DSI_TIMING2 ;
 int REG_FLD_MOD (struct platform_device*,int ,int,int,int) ;
 int dispc_enable_sidle () ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_perf_show (struct platform_device*,char*) ;
 int stub1 (int,int ) ;

__attribute__((used)) static void dsi_handle_framedone(struct platform_device *dsidev, int error)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);


 dispc_enable_sidle();

 if (dsi->te_enabled) {

  REG_FLD_MOD(dsidev, DSI_TIMING2, 1, 15, 15);
 }

 dsi->framedone_callback(error, dsi->framedone_data);

 if (!error)
  dsi_perf_show(dsidev, "DISPC");
}
