
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx7_csi {int dummy; } ;


 int imx7_csi_buf_stride_set (struct imx7_csi*,int ) ;
 int imx7_csi_dmareq_rff_disable (struct imx7_csi*) ;
 int imx7_csi_hw_disable (struct imx7_csi*) ;
 int imx7_csi_hw_disable_irq (struct imx7_csi*) ;

__attribute__((used)) static void imx7_csi_disable(struct imx7_csi *csi)
{
 imx7_csi_dmareq_rff_disable(csi);

 imx7_csi_hw_disable_irq(csi);

 imx7_csi_buf_stride_set(csi, 0);

 imx7_csi_hw_disable(csi);
}
