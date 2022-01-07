
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx7_csi {int dummy; } ;


 int CSI_CSIIMAG_PARA ;
 int CSI_CSIRXCNT ;
 int imx7_csi_dma_reflash (struct imx7_csi*) ;
 int imx7_csi_reg_write (struct imx7_csi*,int,int ) ;

__attribute__((used)) static void imx7_csi_set_imagpara(struct imx7_csi *csi, int width, int height)
{
 int imag_para;
 int rx_count;

 rx_count = (width * height) >> 2;
 imx7_csi_reg_write(csi, rx_count, CSI_CSIRXCNT);

 imag_para = (width << 16) | height;
 imx7_csi_reg_write(csi, imag_para, CSI_CSIIMAG_PARA);


 imx7_csi_dma_reflash(csi);
}
