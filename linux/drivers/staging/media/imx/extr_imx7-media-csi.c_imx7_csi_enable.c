
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx7_csi {int dummy; } ;


 int imx7_csi_dmareq_rff_enable (struct imx7_csi*) ;
 int imx7_csi_hw_enable (struct imx7_csi*) ;
 int imx7_csi_hw_enable_irq (struct imx7_csi*) ;
 int imx7_csi_sw_reset (struct imx7_csi*) ;

__attribute__((used)) static void imx7_csi_enable(struct imx7_csi *csi)
{
 imx7_csi_sw_reset(csi);

 imx7_csi_dmareq_rff_enable(csi);
 imx7_csi_hw_enable_irq(csi);
 imx7_csi_hw_enable(csi);
}
