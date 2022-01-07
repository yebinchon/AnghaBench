
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int out; int in; } ;
struct TYPE_6__ {scalar_t__ dir; int nbytes; TYPE_2__ buf; } ;
struct spi_mem_op {TYPE_3__ data; } ;
struct spi_mem {TYPE_1__* spi; } ;
struct atmel_qspi {int mem; int pending; scalar_t__ regs; int cmd_completion; } ;
struct TYPE_4__ {int master; } ;


 int ETIMEDOUT ;
 scalar_t__ QSPI_CR ;
 int QSPI_CR_LASTXFER ;
 scalar_t__ QSPI_IDR ;
 scalar_t__ QSPI_IER ;
 scalar_t__ QSPI_IFR ;
 scalar_t__ QSPI_SR ;
 int QSPI_SR_CMD_COMPLETED ;
 scalar_t__ SPI_MEM_DATA_IN ;
 int _memcpy_fromio (int ,int,int ) ;
 int _memcpy_toio (int,int ,int ) ;
 int atmel_qspi_set_cfg (struct atmel_qspi*,struct spi_mem_op const*,int*) ;
 int msecs_to_jiffies (int) ;
 int readl_relaxed (scalar_t__) ;
 int reinit_completion (int *) ;
 struct atmel_qspi* spi_controller_get_devdata (int ) ;
 int wait_for_completion_timeout (int *,int ) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int atmel_qspi_exec_op(struct spi_mem *mem, const struct spi_mem_op *op)
{
 struct atmel_qspi *aq = spi_controller_get_devdata(mem->spi->master);
 u32 sr, offset;
 int err;

 err = atmel_qspi_set_cfg(aq, op, &offset);
 if (err)
  return err;


 if (op->data.nbytes) {

  (void)readl_relaxed(aq->regs + QSPI_IFR);


  if (op->data.dir == SPI_MEM_DATA_IN)
   _memcpy_fromio(op->data.buf.in, aq->mem + offset,
           op->data.nbytes);
  else
   _memcpy_toio(aq->mem + offset, op->data.buf.out,
         op->data.nbytes);


  writel_relaxed(QSPI_CR_LASTXFER, aq->regs + QSPI_CR);
 }


 sr = readl_relaxed(aq->regs + QSPI_SR);
 if ((sr & QSPI_SR_CMD_COMPLETED) == QSPI_SR_CMD_COMPLETED)
  return err;


 reinit_completion(&aq->cmd_completion);
 aq->pending = sr & QSPI_SR_CMD_COMPLETED;
 writel_relaxed(QSPI_SR_CMD_COMPLETED, aq->regs + QSPI_IER);
 if (!wait_for_completion_timeout(&aq->cmd_completion,
      msecs_to_jiffies(1000)))
  err = -ETIMEDOUT;
 writel_relaxed(QSPI_SR_CMD_COMPLETED, aq->regs + QSPI_IDR);

 return err;
}
