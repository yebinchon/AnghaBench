
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx7_csi {int dummy; } ;


 unsigned int BIT_DMA_REFLASH_RFF ;
 int BIT_FCC ;
 int BIT_GCLK_MODE ;
 int BIT_HSYNC_POL ;
 int BIT_MCLKEN ;
 int BIT_REDGE ;
 int BIT_SOF_POL ;
 int CSI_CSICR1 ;
 int CSI_CSICR3 ;
 int CSI_CSIIMAG_PARA ;
 int SHIFT_MCLKDIV ;
 int imx7_csi_reg_write (struct imx7_csi*,unsigned int,int ) ;

__attribute__((used)) static void imx7_csi_init_interface(struct imx7_csi *csi)
{
 unsigned int val = 0;
 unsigned int imag_para;

 val = BIT_SOF_POL | BIT_REDGE | BIT_GCLK_MODE | BIT_HSYNC_POL |
  BIT_FCC | 1 << SHIFT_MCLKDIV | BIT_MCLKEN;
 imx7_csi_reg_write(csi, val, CSI_CSICR1);

 imag_para = (800 << 16) | 600;
 imx7_csi_reg_write(csi, imag_para, CSI_CSIIMAG_PARA);

 val = BIT_DMA_REFLASH_RFF;
 imx7_csi_reg_write(csi, val, CSI_CSICR3);
}
