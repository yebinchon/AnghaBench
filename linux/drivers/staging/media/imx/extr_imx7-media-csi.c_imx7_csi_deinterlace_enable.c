
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx7_csi {int dummy; } ;


 int BIT_DEINTERLACE_EN ;
 int CSI_CSICR18 ;
 int imx7_csi_reg_read (struct imx7_csi*,int ) ;
 int imx7_csi_reg_write (struct imx7_csi*,int ,int ) ;

__attribute__((used)) static void imx7_csi_deinterlace_enable(struct imx7_csi *csi, bool enable)
{
 u32 cr18 = imx7_csi_reg_read(csi, CSI_CSICR18);

 if (enable)
  cr18 |= BIT_DEINTERLACE_EN;
 else
  cr18 &= ~BIT_DEINTERLACE_EN;

 imx7_csi_reg_write(csi, cr18, CSI_CSICR18);
}
