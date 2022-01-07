
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_qspi_soc_intc {int (* bcm_qspi_int_ack ) (struct bcm_qspi_soc_intc*,int ) ;} ;
struct bcm_qspi_dev_id {struct bcm_qspi* dev; } ;
struct bcm_qspi {int mspi_done; struct bcm_qspi_soc_intc* soc_intc; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MSPI ;
 int MSPI_DONE ;
 int MSPI_MSPI_STATUS ;
 int MSPI_MSPI_STATUS_SPIF ;
 int bcm_qspi_read (struct bcm_qspi*,int ,int ) ;
 int bcm_qspi_write (struct bcm_qspi*,int ,int ,int) ;
 int complete (int *) ;
 int stub1 (struct bcm_qspi_soc_intc*,int ) ;

__attribute__((used)) static irqreturn_t bcm_qspi_mspi_l2_isr(int irq, void *dev_id)
{
 struct bcm_qspi_dev_id *qspi_dev_id = dev_id;
 struct bcm_qspi *qspi = qspi_dev_id->dev;
 u32 status = bcm_qspi_read(qspi, MSPI, MSPI_MSPI_STATUS);

 if (status & MSPI_MSPI_STATUS_SPIF) {
  struct bcm_qspi_soc_intc *soc_intc = qspi->soc_intc;

  status &= ~MSPI_MSPI_STATUS_SPIF;
  bcm_qspi_write(qspi, MSPI, MSPI_MSPI_STATUS, status);
  if (qspi->soc_intc)
   soc_intc->bcm_qspi_int_ack(soc_intc, MSPI_DONE);
  complete(&qspi->mspi_done);
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
