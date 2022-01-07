
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx7_csi {int dummy; } ;


 int BIT_EOF_INT_EN ;
 int BIT_FB1_DMA_DONE_INTEN ;
 int BIT_FB2_DMA_DONE_INTEN ;
 int BIT_RFF_OR_INT ;
 int BIT_SOF_INTEN ;
 int CSI_CSICR1 ;
 int imx7_csi_reg_read (struct imx7_csi*,int ) ;
 int imx7_csi_reg_write (struct imx7_csi*,int ,int ) ;

__attribute__((used)) static void imx7_csi_hw_enable_irq(struct imx7_csi *csi)
{
 u32 cr1 = imx7_csi_reg_read(csi, CSI_CSICR1);

 cr1 |= BIT_SOF_INTEN;
 cr1 |= BIT_RFF_OR_INT;


 cr1 |= BIT_FB1_DMA_DONE_INTEN;
 cr1 |= BIT_FB2_DMA_DONE_INTEN;

 cr1 |= BIT_EOF_INT_EN;

 imx7_csi_reg_write(csi, cr1, CSI_CSICR1);
}
