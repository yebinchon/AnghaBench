
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iss_csi2_device {int regs1; int iss; } ;


 int CSI2_IRQENABLE ;
 int CSI2_IRQSTATUS ;
 int CSI2_IRQ_COMPLEXIO_ERR ;
 int CSI2_IRQ_CONTEXT0 ;
 int CSI2_IRQ_ECC_CORRECTION ;
 int CSI2_IRQ_ECC_NO_CORRECTION ;
 int CSI2_IRQ_FIFO_OVF ;
 int CSI2_IRQ_OCP_ERR ;
 int CSI2_IRQ_SHORT_PACKET ;
 int iss_reg_set (int ,int ,int ,int) ;
 int iss_reg_write (int ,int ,int ,int) ;

__attribute__((used)) static void csi2_irq_status_set(struct iss_csi2_device *csi2, int enable)
{
 u32 reg;

 reg = CSI2_IRQ_OCP_ERR |
  CSI2_IRQ_SHORT_PACKET |
  CSI2_IRQ_ECC_CORRECTION |
  CSI2_IRQ_ECC_NO_CORRECTION |
  CSI2_IRQ_COMPLEXIO_ERR |
  CSI2_IRQ_FIFO_OVF |
  CSI2_IRQ_CONTEXT0;
 iss_reg_write(csi2->iss, csi2->regs1, CSI2_IRQSTATUS, reg);
 if (enable)
  iss_reg_set(csi2->iss, csi2->regs1, CSI2_IRQENABLE, reg);
 else
  iss_reg_write(csi2->iss, csi2->regs1, CSI2_IRQENABLE, 0);
}
