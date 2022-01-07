
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcm_qspi_soc_intc {int (* bcm_qspi_int_ack ) (struct bcm_qspi_soc_intc*,int ) ;} ;
struct bcm_qspi_dev_id {struct bcm_qspi* dev; } ;
struct bcm_qspi {int bspi_done; struct bcm_qspi_soc_intc* soc_intc; int bspi_rf_op_status; TYPE_1__* pdev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int BSPI_ERR ;
 int EIO ;
 int IRQ_HANDLED ;
 int complete (int *) ;
 int dev_err (int *,char*) ;
 int stub1 (struct bcm_qspi_soc_intc*,int ) ;

__attribute__((used)) static irqreturn_t bcm_qspi_bspi_lr_err_l2_isr(int irq, void *dev_id)
{
 struct bcm_qspi_dev_id *qspi_dev_id = dev_id;
 struct bcm_qspi *qspi = qspi_dev_id->dev;
 struct bcm_qspi_soc_intc *soc_intc = qspi->soc_intc;

 dev_err(&qspi->pdev->dev, "BSPI INT error\n");
 qspi->bspi_rf_op_status = -EIO;
 if (qspi->soc_intc)

  soc_intc->bcm_qspi_int_ack(soc_intc, BSPI_ERR);

 complete(&qspi->bspi_done);
 return IRQ_HANDLED;
}
