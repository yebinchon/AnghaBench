
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx7_csi {int dummy; } ;


 int BIT_CLR_RXFIFO ;
 int BIT_FCC ;
 int CSI_CSICR1 ;
 int imx7_csi_reg_read (struct imx7_csi*,int ) ;
 int imx7_csi_reg_write (struct imx7_csi*,int,int ) ;

__attribute__((used)) static void imx7_csi_rx_fifo_clear(struct imx7_csi *csi)
{
 u32 cr1;

 cr1 = imx7_csi_reg_read(csi, CSI_CSICR1);
 imx7_csi_reg_write(csi, cr1 & ~BIT_FCC, CSI_CSICR1);
 cr1 = imx7_csi_reg_read(csi, CSI_CSICR1);
 imx7_csi_reg_write(csi, cr1 | BIT_CLR_RXFIFO, CSI_CSICR1);

 cr1 = imx7_csi_reg_read(csi, CSI_CSICR1);
 imx7_csi_reg_write(csi, cr1 | BIT_FCC, CSI_CSICR1);
}
