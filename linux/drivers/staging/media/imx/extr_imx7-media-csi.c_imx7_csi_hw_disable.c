
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx7_csi {int dummy; } ;


 int BIT_CSI_HW_ENABLE ;
 int CSI_CSICR18 ;
 int imx7_csi_reg_read (struct imx7_csi*,int ) ;
 int imx7_csi_reg_write (struct imx7_csi*,int ,int ) ;

__attribute__((used)) static void imx7_csi_hw_disable(struct imx7_csi *csi)
{
 u32 cr = imx7_csi_reg_read(csi, CSI_CSICR18);

 cr &= ~BIT_CSI_HW_ENABLE;

 imx7_csi_reg_write(csi, cr, CSI_CSICR18);
}
