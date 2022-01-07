
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx7_csi {int dummy; } ;
typedef int dma_addr_t ;


 int CSI_CSIDMASA_FB1 ;
 int CSI_CSIDMASA_FB2 ;
 int imx7_csi_reg_write (struct imx7_csi*,int ,int ) ;

__attribute__((used)) static void imx7_csi_update_buf(struct imx7_csi *csi, dma_addr_t phys,
    int buf_num)
{
 if (buf_num == 1)
  imx7_csi_reg_write(csi, phys, CSI_CSIDMASA_FB2);
 else
  imx7_csi_reg_write(csi, phys, CSI_CSIDMASA_FB1);
}
