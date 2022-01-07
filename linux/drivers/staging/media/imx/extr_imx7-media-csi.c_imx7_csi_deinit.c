
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx7_csi {int is_init; int mclk; } ;


 int clk_disable_unprepare (int ) ;
 int imx7_csi_dmareq_rff_disable (struct imx7_csi*) ;
 int imx7_csi_hw_reset (struct imx7_csi*) ;
 int imx7_csi_init_interface (struct imx7_csi*) ;

__attribute__((used)) static void imx7_csi_deinit(struct imx7_csi *csi)
{
 if (!csi->is_init)
  return;

 imx7_csi_hw_reset(csi);
 imx7_csi_init_interface(csi);
 imx7_csi_dmareq_rff_disable(csi);
 clk_disable_unprepare(csi->mclk);

 csi->is_init = 0;
}
