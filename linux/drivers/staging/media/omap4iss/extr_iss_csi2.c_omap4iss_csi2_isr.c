
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iss_pipeline {int error; } ;
struct iss_device {int dev; } ;
struct TYPE_2__ {int entity; } ;
struct iss_csi2_device {int * contexts; int regs1; struct iss_device* iss; int available; TYPE_1__ subdev; } ;


 int CSI2_COMPLEXIO_IRQSTATUS ;
 int CSI2_IRQSTATUS ;
 int CSI2_IRQ_COMPLEXIO_ERR ;
 int CSI2_IRQ_CONTEXT0 ;
 int CSI2_IRQ_ECC_CORRECTION ;
 int CSI2_IRQ_ECC_NO_CORRECTION ;
 int CSI2_IRQ_FIFO_OVF ;
 int CSI2_IRQ_OCP_ERR ;
 int CSI2_IRQ_SHORT_PACKET ;
 int csi2_isr_ctx (struct iss_csi2_device*,int *) ;
 int dev_dbg (int ,char*,...) ;
 int iss_reg_read (struct iss_device*,int ,int ) ;
 int iss_reg_write (struct iss_device*,int ,int ,int) ;
 struct iss_pipeline* to_iss_pipeline (int *) ;

void omap4iss_csi2_isr(struct iss_csi2_device *csi2)
{
 struct iss_pipeline *pipe = to_iss_pipeline(&csi2->subdev.entity);
 u32 csi2_irqstatus, cpxio1_irqstatus;
 struct iss_device *iss = csi2->iss;

 if (!csi2->available)
  return;

 csi2_irqstatus = iss_reg_read(csi2->iss, csi2->regs1, CSI2_IRQSTATUS);
 iss_reg_write(csi2->iss, csi2->regs1, CSI2_IRQSTATUS, csi2_irqstatus);


 if (csi2_irqstatus & CSI2_IRQ_COMPLEXIO_ERR) {
  cpxio1_irqstatus = iss_reg_read(csi2->iss, csi2->regs1,
      CSI2_COMPLEXIO_IRQSTATUS);
  iss_reg_write(csi2->iss, csi2->regs1, CSI2_COMPLEXIO_IRQSTATUS,
         cpxio1_irqstatus);
  dev_dbg(iss->dev, "CSI2: ComplexIO Error IRQ %x\n",
   cpxio1_irqstatus);
  pipe->error = 1;
 }

 if (csi2_irqstatus & (CSI2_IRQ_OCP_ERR |
         CSI2_IRQ_SHORT_PACKET |
         CSI2_IRQ_ECC_NO_CORRECTION |
         CSI2_IRQ_COMPLEXIO_ERR |
         CSI2_IRQ_FIFO_OVF)) {
  dev_dbg(iss->dev,
   "CSI2 Err: OCP:%d SHORT:%d ECC:%d CPXIO:%d OVF:%d\n",
   csi2_irqstatus & CSI2_IRQ_OCP_ERR ? 1 : 0,
   csi2_irqstatus & CSI2_IRQ_SHORT_PACKET ? 1 : 0,
   csi2_irqstatus & CSI2_IRQ_ECC_NO_CORRECTION ? 1 : 0,
   csi2_irqstatus & CSI2_IRQ_COMPLEXIO_ERR ? 1 : 0,
   csi2_irqstatus & CSI2_IRQ_FIFO_OVF ? 1 : 0);
  pipe->error = 1;
 }


 if (csi2_irqstatus & CSI2_IRQ_CONTEXT0)
  csi2_isr_ctx(csi2, &csi2->contexts[0]);

 if (csi2_irqstatus & CSI2_IRQ_ECC_CORRECTION)
  dev_dbg(iss->dev, "CSI2: ECC correction done\n");
}
