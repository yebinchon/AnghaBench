
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iss_csi2_device {int regs1; int iss; } ;


 int CSI2_CTX_IRQENABLE (int) ;
 int CSI2_CTX_IRQSTATUS (int) ;
 int CSI2_CTX_IRQ_FE ;
 int CSI2_CTX_IRQ_FS ;
 int iss_reg_clr (int ,int ,int ,int const) ;
 int iss_reg_set (int ,int ,int ,int const) ;
 int iss_reg_write (int ,int ,int ,int const) ;

__attribute__((used)) static void csi2_irq_ctx_set(struct iss_csi2_device *csi2, int enable)
{
 const u32 mask = CSI2_CTX_IRQ_FE | CSI2_CTX_IRQ_FS;
 int i;

 for (i = 0; i < 8; i++) {
  iss_reg_write(csi2->iss, csi2->regs1, CSI2_CTX_IRQSTATUS(i),
         mask);
  if (enable)
   iss_reg_set(csi2->iss, csi2->regs1,
        CSI2_CTX_IRQENABLE(i), mask);
  else
   iss_reg_clr(csi2->iss, csi2->regs1,
        CSI2_CTX_IRQENABLE(i), mask);
 }
}
