
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct zynq_qspi {int* txbuf; int* rxbuf; int tx_bytes; int rx_bytes; int data_completion; int dev; } ;
struct TYPE_11__ {scalar_t__ in; scalar_t__ out; } ;
struct TYPE_12__ {int nbytes; scalar_t__ dir; TYPE_4__ buf; int buswidth; } ;
struct TYPE_10__ {int nbytes; int buswidth; } ;
struct TYPE_9__ {int nbytes; int val; int buswidth; } ;
struct TYPE_8__ {int opcode; int buswidth; } ;
struct spi_mem_op {TYPE_5__ data; TYPE_3__ dummy; TYPE_2__ addr; TYPE_1__ cmd; } ;
struct spi_mem {TYPE_6__* spi; } ;
struct TYPE_13__ {int master; } ;


 int ETIMEDOUT ;
 int GFP_KERNEL ;
 scalar_t__ SPI_MEM_DATA_OUT ;
 int ZYNQ_QSPI_FIFO_DEPTH ;
 int ZYNQ_QSPI_IEN_OFFSET ;
 int ZYNQ_QSPI_IXR_RXTX_MASK ;
 int dev_dbg (int ,char*,int ,int ,int ,int ,int ) ;
 int kfree (int*) ;
 int* kzalloc (int,int ) ;
 int memset (int*,int,int) ;
 int msecs_to_jiffies (int) ;
 int reinit_completion (int *) ;
 struct zynq_qspi* spi_controller_get_devdata (int ) ;
 int wait_for_completion_interruptible_timeout (int *,int ) ;
 int zynq_qspi_chipselect (TYPE_6__*,int) ;
 int zynq_qspi_config_op (struct zynq_qspi*,TYPE_6__*) ;
 int zynq_qspi_write (struct zynq_qspi*,int ,int ) ;
 int zynq_qspi_write_op (struct zynq_qspi*,int ,int) ;

__attribute__((used)) static int zynq_qspi_exec_mem_op(struct spi_mem *mem,
     const struct spi_mem_op *op)
{
 struct zynq_qspi *xqspi = spi_controller_get_devdata(mem->spi->master);
 int err = 0, i;
 u8 *tmpbuf;

 dev_dbg(xqspi->dev, "cmd:%#x mode:%d.%d.%d.%d\n",
  op->cmd.opcode, op->cmd.buswidth, op->addr.buswidth,
  op->dummy.buswidth, op->data.buswidth);

 zynq_qspi_chipselect(mem->spi, 1);
 zynq_qspi_config_op(xqspi, mem->spi);

 if (op->cmd.opcode) {
  reinit_completion(&xqspi->data_completion);
  xqspi->txbuf = (u8 *)&op->cmd.opcode;
  xqspi->rxbuf = ((void*)0);
  xqspi->tx_bytes = sizeof(op->cmd.opcode);
  xqspi->rx_bytes = sizeof(op->cmd.opcode);
  zynq_qspi_write_op(xqspi, ZYNQ_QSPI_FIFO_DEPTH, 1);
  zynq_qspi_write(xqspi, ZYNQ_QSPI_IEN_OFFSET,
    ZYNQ_QSPI_IXR_RXTX_MASK);
  if (!wait_for_completion_interruptible_timeout(&xqspi->data_completion,
              msecs_to_jiffies(1000)))
   err = -ETIMEDOUT;
 }

 if (op->addr.nbytes) {
  for (i = 0; i < op->addr.nbytes; i++) {
   xqspi->txbuf[i] = op->addr.val >>
     (8 * (op->addr.nbytes - i - 1));
  }

  reinit_completion(&xqspi->data_completion);
  xqspi->rxbuf = ((void*)0);
  xqspi->tx_bytes = op->addr.nbytes;
  xqspi->rx_bytes = op->addr.nbytes;
  zynq_qspi_write_op(xqspi, ZYNQ_QSPI_FIFO_DEPTH, 1);
  zynq_qspi_write(xqspi, ZYNQ_QSPI_IEN_OFFSET,
    ZYNQ_QSPI_IXR_RXTX_MASK);
  if (!wait_for_completion_interruptible_timeout(&xqspi->data_completion,
              msecs_to_jiffies(1000)))
   err = -ETIMEDOUT;
 }

 if (op->dummy.nbytes) {
  tmpbuf = kzalloc(op->dummy.nbytes, GFP_KERNEL);
  memset(tmpbuf, 0xff, op->dummy.nbytes);
  reinit_completion(&xqspi->data_completion);
  xqspi->txbuf = tmpbuf;
  xqspi->rxbuf = ((void*)0);
  xqspi->tx_bytes = op->dummy.nbytes;
  xqspi->rx_bytes = op->dummy.nbytes;
  zynq_qspi_write_op(xqspi, ZYNQ_QSPI_FIFO_DEPTH, 1);
  zynq_qspi_write(xqspi, ZYNQ_QSPI_IEN_OFFSET,
    ZYNQ_QSPI_IXR_RXTX_MASK);
  if (!wait_for_completion_interruptible_timeout(&xqspi->data_completion,
              msecs_to_jiffies(1000)))
   err = -ETIMEDOUT;

  kfree(tmpbuf);
 }

 if (op->data.nbytes) {
  reinit_completion(&xqspi->data_completion);
  if (op->data.dir == SPI_MEM_DATA_OUT) {
   xqspi->txbuf = (u8 *)op->data.buf.out;
   xqspi->tx_bytes = op->data.nbytes;
   xqspi->rxbuf = ((void*)0);
   xqspi->rx_bytes = op->data.nbytes;
  } else {
   xqspi->txbuf = ((void*)0);
   xqspi->rxbuf = (u8 *)op->data.buf.in;
   xqspi->rx_bytes = op->data.nbytes;
   xqspi->tx_bytes = op->data.nbytes;
  }

  zynq_qspi_write_op(xqspi, ZYNQ_QSPI_FIFO_DEPTH, 1);
  zynq_qspi_write(xqspi, ZYNQ_QSPI_IEN_OFFSET,
    ZYNQ_QSPI_IXR_RXTX_MASK);
  if (!wait_for_completion_interruptible_timeout(&xqspi->data_completion,
              msecs_to_jiffies(1000)))
   err = -ETIMEDOUT;
 }
 zynq_qspi_chipselect(mem->spi, 0);

 return err;
}
