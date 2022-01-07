
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx7_csi {int is_init; int mclk; } ;


 int clk_prepare_enable (int ) ;
 int imx7_csi_dmareq_rff_enable (struct imx7_csi*) ;
 int imx7_csi_hw_reset (struct imx7_csi*) ;
 int imx7_csi_init_interface (struct imx7_csi*) ;

__attribute__((used)) static int imx7_csi_init(struct imx7_csi *csi)
{
 int ret;

 if (csi->is_init)
  return 0;

 ret = clk_prepare_enable(csi->mclk);
 if (ret < 0)
  return ret;
 imx7_csi_hw_reset(csi);
 imx7_csi_init_interface(csi);
 imx7_csi_dmareq_rff_enable(csi);

 csi->is_init = 1;

 return 0;
}
