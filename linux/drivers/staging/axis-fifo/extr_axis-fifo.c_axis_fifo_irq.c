
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axis_fifo {scalar_t__ base_addr; int dt_device; int write_queue; int read_queue; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ XLLF_IER_OFFSET ;
 unsigned int XLLF_INT_ALL_MASK ;
 unsigned int XLLF_INT_RC_MASK ;
 unsigned int XLLF_INT_RFPE_MASK ;
 unsigned int XLLF_INT_RFPF_MASK ;
 unsigned int XLLF_INT_RPORE_MASK ;
 unsigned int XLLF_INT_RPUE_MASK ;
 unsigned int XLLF_INT_RPURE_MASK ;
 unsigned int XLLF_INT_RRC_MASK ;
 unsigned int XLLF_INT_TC_MASK ;
 unsigned int XLLF_INT_TFPE_MASK ;
 unsigned int XLLF_INT_TFPF_MASK ;
 unsigned int XLLF_INT_TPOE_MASK ;
 unsigned int XLLF_INT_TRC_MASK ;
 unsigned int XLLF_INT_TSE_MASK ;
 scalar_t__ XLLF_ISR_OFFSET ;
 int dev_err (int ,char*,...) ;
 unsigned int ioread32 (scalar_t__) ;
 int iowrite32 (unsigned int,scalar_t__) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t axis_fifo_irq(int irq, void *dw)
{
 struct axis_fifo *fifo = (struct axis_fifo *)dw;
 unsigned int pending_interrupts;

 do {
  pending_interrupts = ioread32(fifo->base_addr +
           XLLF_IER_OFFSET) &
           ioread32(fifo->base_addr
           + XLLF_ISR_OFFSET);
  if (pending_interrupts & XLLF_INT_RC_MASK) {



   wake_up(&fifo->read_queue);


   iowrite32(XLLF_INT_RC_MASK & XLLF_INT_ALL_MASK,
      fifo->base_addr + XLLF_ISR_OFFSET);
  } else if (pending_interrupts & XLLF_INT_TC_MASK) {



   wake_up(&fifo->write_queue);

   iowrite32(XLLF_INT_TC_MASK & XLLF_INT_ALL_MASK,
      fifo->base_addr + XLLF_ISR_OFFSET);
  } else if (pending_interrupts & XLLF_INT_TFPF_MASK) {


   iowrite32(XLLF_INT_TFPF_MASK & XLLF_INT_ALL_MASK,
      fifo->base_addr + XLLF_ISR_OFFSET);
  } else if (pending_interrupts & XLLF_INT_TFPE_MASK) {


   iowrite32(XLLF_INT_TFPE_MASK & XLLF_INT_ALL_MASK,
      fifo->base_addr + XLLF_ISR_OFFSET);
  } else if (pending_interrupts & XLLF_INT_RFPF_MASK) {


   iowrite32(XLLF_INT_RFPF_MASK & XLLF_INT_ALL_MASK,
      fifo->base_addr + XLLF_ISR_OFFSET);
  } else if (pending_interrupts & XLLF_INT_RFPE_MASK) {


   iowrite32(XLLF_INT_RFPE_MASK & XLLF_INT_ALL_MASK,
      fifo->base_addr + XLLF_ISR_OFFSET);
  } else if (pending_interrupts & XLLF_INT_TRC_MASK) {


   iowrite32(XLLF_INT_TRC_MASK & XLLF_INT_ALL_MASK,
      fifo->base_addr + XLLF_ISR_OFFSET);
  } else if (pending_interrupts & XLLF_INT_RRC_MASK) {


   iowrite32(XLLF_INT_RRC_MASK & XLLF_INT_ALL_MASK,
      fifo->base_addr + XLLF_ISR_OFFSET);
  } else if (pending_interrupts & XLLF_INT_RPURE_MASK) {

   dev_err(fifo->dt_device,
    "receive under-read interrupt\n");

   iowrite32(XLLF_INT_RPURE_MASK & XLLF_INT_ALL_MASK,
      fifo->base_addr + XLLF_ISR_OFFSET);
  } else if (pending_interrupts & XLLF_INT_RPORE_MASK) {

   dev_err(fifo->dt_device,
    "receive over-read interrupt\n");

   iowrite32(XLLF_INT_RPORE_MASK & XLLF_INT_ALL_MASK,
      fifo->base_addr + XLLF_ISR_OFFSET);
  } else if (pending_interrupts & XLLF_INT_RPUE_MASK) {

   dev_err(fifo->dt_device,
    "receive underrun error interrupt\n");

   iowrite32(XLLF_INT_RPUE_MASK & XLLF_INT_ALL_MASK,
      fifo->base_addr + XLLF_ISR_OFFSET);
  } else if (pending_interrupts & XLLF_INT_TPOE_MASK) {

   dev_err(fifo->dt_device,
    "transmit overrun error interrupt\n");

   iowrite32(XLLF_INT_TPOE_MASK & XLLF_INT_ALL_MASK,
      fifo->base_addr + XLLF_ISR_OFFSET);
  } else if (pending_interrupts & XLLF_INT_TSE_MASK) {

   dev_err(fifo->dt_device,
    "transmit length mismatch error interrupt\n");

   iowrite32(XLLF_INT_TSE_MASK & XLLF_INT_ALL_MASK,
      fifo->base_addr + XLLF_ISR_OFFSET);
  } else if (pending_interrupts) {

   dev_err(fifo->dt_device,
    "unknown interrupt(s) 0x%x\n",
    pending_interrupts);

   iowrite32(XLLF_INT_ALL_MASK,
      fifo->base_addr + XLLF_ISR_OFFSET);
  }
 } while (pending_interrupts);

 return IRQ_HANDLED;
}
