
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx7_csi {int dummy; } ;


 int BIT_DMA_REQ_EN_RFF ;
 int BIT_HRESP_ERR_EN ;
 int CSI_CSICR3 ;
 int imx7_csi_reg_read (struct imx7_csi*,int ) ;
 int imx7_csi_reg_write (struct imx7_csi*,int ,int ) ;

__attribute__((used)) static void imx7_csi_dmareq_rff_disable(struct imx7_csi *csi)
{
 u32 cr3 = imx7_csi_reg_read(csi, CSI_CSICR3);

 cr3 &= ~BIT_DMA_REQ_EN_RFF;
 cr3 &= ~BIT_HRESP_ERR_EN;
 imx7_csi_reg_write(csi, cr3, CSI_CSICR3);
}
