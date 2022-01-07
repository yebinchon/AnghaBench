
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bcm_qspi_soc_intc {int (* bcm_qspi_int_ack ) (struct bcm_qspi_soc_intc*,int ) ;int (* bcm_qspi_int_set ) (struct bcm_qspi_soc_intc*,int ,int) ;} ;
struct bcm_qspi_dev_id {TYPE_1__* irqp; struct bcm_qspi* dev; } ;
struct bcm_qspi {scalar_t__ bspi_rf_op_len; int bspi_done; scalar_t__ bspi_enabled; struct bcm_qspi_soc_intc* soc_intc; scalar_t__ bspi_rf_op_status; int * bspi_rf_op; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int mask; } ;


 int BSPI_DONE ;
 int INTR_BSPI_LR_SESSION_DONE_MASK ;
 int IRQ_HANDLED ;
 int bcm_qspi_bspi_flush_prefetch_buffers (struct bcm_qspi*) ;
 int bcm_qspi_bspi_lr_clear (struct bcm_qspi*) ;
 int bcm_qspi_bspi_lr_data_read (struct bcm_qspi*) ;
 int complete (int *) ;
 int stub1 (struct bcm_qspi_soc_intc*,int ,int) ;
 int stub2 (struct bcm_qspi_soc_intc*,int ) ;

__attribute__((used)) static irqreturn_t bcm_qspi_bspi_lr_l2_isr(int irq, void *dev_id)
{
 struct bcm_qspi_dev_id *qspi_dev_id = dev_id;
 struct bcm_qspi *qspi = qspi_dev_id->dev;
 struct bcm_qspi_soc_intc *soc_intc = qspi->soc_intc;
 u32 status = qspi_dev_id->irqp->mask;

 if (qspi->bspi_enabled && qspi->bspi_rf_op) {
  bcm_qspi_bspi_lr_data_read(qspi);
  if (qspi->bspi_rf_op_len == 0) {
   qspi->bspi_rf_op = ((void*)0);
   if (qspi->soc_intc) {

    soc_intc->bcm_qspi_int_set(soc_intc, BSPI_DONE,
          0);

    status = INTR_BSPI_LR_SESSION_DONE_MASK;
   }

   if (qspi->bspi_rf_op_status)
    bcm_qspi_bspi_lr_clear(qspi);
   else
    bcm_qspi_bspi_flush_prefetch_buffers(qspi);
  }

  if (qspi->soc_intc)

   soc_intc->bcm_qspi_int_ack(soc_intc, BSPI_DONE);
 }

 status &= INTR_BSPI_LR_SESSION_DONE_MASK;
 if (qspi->bspi_enabled && status && qspi->bspi_rf_op_len == 0)
  complete(&qspi->bspi_done);

 return IRQ_HANDLED;
}
