
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zynq_qspi {int data_completion; int rx_bytes; scalar_t__ tx_bytes; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ZYNQ_QSPI_IDIS_OFFSET ;
 int ZYNQ_QSPI_IXR_RXNEMTY_MASK ;
 int ZYNQ_QSPI_IXR_RXTX_MASK ;
 int ZYNQ_QSPI_IXR_TXNFULL_MASK ;
 int ZYNQ_QSPI_RX_THRESHOLD ;
 int ZYNQ_QSPI_STATUS_OFFSET ;
 int complete (int *) ;
 int zynq_qspi_read (struct zynq_qspi*,int ) ;
 int zynq_qspi_read_op (struct zynq_qspi*,int ) ;
 int zynq_qspi_write (struct zynq_qspi*,int ,int) ;
 int zynq_qspi_write_op (struct zynq_qspi*,int ,int) ;

__attribute__((used)) static irqreturn_t zynq_qspi_irq(int irq, void *dev_id)
{
 u32 intr_status;
 bool txempty;
 struct zynq_qspi *xqspi = (struct zynq_qspi *)dev_id;

 intr_status = zynq_qspi_read(xqspi, ZYNQ_QSPI_STATUS_OFFSET);
 zynq_qspi_write(xqspi, ZYNQ_QSPI_STATUS_OFFSET, intr_status);

 if ((intr_status & ZYNQ_QSPI_IXR_TXNFULL_MASK) ||
     (intr_status & ZYNQ_QSPI_IXR_RXNEMTY_MASK)) {





  txempty = !!(intr_status & ZYNQ_QSPI_IXR_TXNFULL_MASK);

  zynq_qspi_read_op(xqspi, ZYNQ_QSPI_RX_THRESHOLD);
  if (xqspi->tx_bytes) {

   zynq_qspi_write_op(xqspi, ZYNQ_QSPI_RX_THRESHOLD,
        txempty);
  } else {




   if (!xqspi->rx_bytes) {
    zynq_qspi_write(xqspi,
      ZYNQ_QSPI_IDIS_OFFSET,
      ZYNQ_QSPI_IXR_RXTX_MASK);
    complete(&xqspi->data_completion);
   }
  }
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
