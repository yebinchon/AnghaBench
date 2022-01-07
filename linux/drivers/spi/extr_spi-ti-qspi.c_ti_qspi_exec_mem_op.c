
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


typedef scalar_t__ u32 ;
struct ti_qspi {scalar_t__ mmap_size; scalar_t__ mmap_base; int list_lock; scalar_t__ rx_chan; int mmap_enabled; } ;
struct TYPE_11__ {int in; } ;
struct TYPE_12__ {scalar_t__ nbytes; scalar_t__ dir; TYPE_4__ buf; int buswidth; } ;
struct TYPE_10__ {int nbytes; } ;
struct TYPE_9__ {int nbytes; scalar_t__ val; } ;
struct TYPE_8__ {int opcode; } ;
struct spi_mem_op {TYPE_5__ data; TYPE_3__ dummy; TYPE_2__ addr; TYPE_1__ cmd; } ;
struct spi_mem {TYPE_6__* spi; } ;
struct sg_table {int dummy; } ;
struct TYPE_13__ {int master; } ;


 int ENOTSUPP ;
 scalar_t__ SPI_MEM_DATA_IN ;
 int memcpy_fromio (int ,scalar_t__,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_controller_dma_map_mem_op_data (int ,struct spi_mem_op const*,struct sg_table*) ;
 int spi_controller_dma_unmap_mem_op_data (int ,struct spi_mem_op const*,struct sg_table*) ;
 struct ti_qspi* spi_master_get_devdata (int ) ;
 int ti_qspi_dma_bounce_buffer (struct ti_qspi*,scalar_t__,int ,scalar_t__) ;
 int ti_qspi_dma_xfer_sg (struct ti_qspi*,struct sg_table,scalar_t__) ;
 int ti_qspi_enable_memory_map (TYPE_6__*) ;
 int ti_qspi_setup_mmap_read (TYPE_6__*,int ,int ,int,int ) ;
 scalar_t__ virt_addr_valid (int ) ;

__attribute__((used)) static int ti_qspi_exec_mem_op(struct spi_mem *mem,
          const struct spi_mem_op *op)
{
 struct ti_qspi *qspi = spi_master_get_devdata(mem->spi->master);
 u32 from = 0;
 int ret = 0;


 if (!op->data.nbytes || op->data.dir != SPI_MEM_DATA_IN ||
     !op->addr.nbytes || op->addr.nbytes > 4)
  return -ENOTSUPP;


 from = op->addr.val;
 if (from + op->data.nbytes > qspi->mmap_size)
  return -ENOTSUPP;

 mutex_lock(&qspi->list_lock);

 if (!qspi->mmap_enabled)
  ti_qspi_enable_memory_map(mem->spi);
 ti_qspi_setup_mmap_read(mem->spi, op->cmd.opcode, op->data.buswidth,
    op->addr.nbytes, op->dummy.nbytes);

 if (qspi->rx_chan) {
  struct sg_table sgt;

  if (virt_addr_valid(op->data.buf.in) &&
      !spi_controller_dma_map_mem_op_data(mem->spi->master, op,
       &sgt)) {
   ret = ti_qspi_dma_xfer_sg(qspi, sgt, from);
   spi_controller_dma_unmap_mem_op_data(mem->spi->master,
            op, &sgt);
  } else {
   ret = ti_qspi_dma_bounce_buffer(qspi, from,
       op->data.buf.in,
       op->data.nbytes);
  }
 } else {
  memcpy_fromio(op->data.buf.in, qspi->mmap_base + from,
         op->data.nbytes);
 }

 mutex_unlock(&qspi->list_lock);

 return ret;
}
