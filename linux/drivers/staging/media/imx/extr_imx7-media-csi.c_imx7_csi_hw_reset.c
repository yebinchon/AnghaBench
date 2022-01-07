
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx7_csi {int dummy; } ;


 int BIT_FRMCNT_RST ;
 int CSICR1_RESET_VAL ;
 int CSICR2_RESET_VAL ;
 int CSICR3_RESET_VAL ;
 int CSI_CSICR1 ;
 int CSI_CSICR2 ;
 int CSI_CSICR3 ;
 int imx7_csi_reg_read (struct imx7_csi*,int ) ;
 int imx7_csi_reg_write (struct imx7_csi*,int,int ) ;

__attribute__((used)) static void imx7_csi_hw_reset(struct imx7_csi *csi)
{
 imx7_csi_reg_write(csi,
      imx7_csi_reg_read(csi, CSI_CSICR3) | BIT_FRMCNT_RST,
      CSI_CSICR3);

 imx7_csi_reg_write(csi, CSICR1_RESET_VAL, CSI_CSICR1);
 imx7_csi_reg_write(csi, CSICR2_RESET_VAL, CSI_CSICR2);
 imx7_csi_reg_write(csi, CSICR3_RESET_VAL, CSI_CSICR3);
}
