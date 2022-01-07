
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx7_csi {int dummy; } ;


 int CSI_CSISR ;
 int imx7_csi_reg_read (struct imx7_csi*,int ) ;
 int imx7_csi_reg_write (struct imx7_csi*,int ,int ) ;

__attribute__((used)) static u32 imx7_csi_irq_clear(struct imx7_csi *csi)
{
 u32 isr;

 isr = imx7_csi_reg_read(csi, CSI_CSISR);
 imx7_csi_reg_write(csi, isr, CSI_CSISR);

 return isr;
}
