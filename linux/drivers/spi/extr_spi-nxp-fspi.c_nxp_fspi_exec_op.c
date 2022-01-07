
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nbytes; scalar_t__ dir; } ;
struct spi_mem_op {TYPE_2__ data; } ;
struct spi_mem {TYPE_3__* spi; } ;
struct nxp_fspi {int lock; TYPE_1__* devtype_data; scalar_t__ iobase; } ;
struct TYPE_6__ {int master; } ;
struct TYPE_4__ {int rxfifo; } ;


 scalar_t__ FSPI_STS0 ;
 int FSPI_STS0_ARB_IDLE ;
 int POLL_TOUT ;
 scalar_t__ SPI_MEM_DATA_IN ;
 scalar_t__ SPI_MEM_DATA_OUT ;
 int WARN_ON (int) ;
 int fspi_readl_poll_tout (struct nxp_fspi*,scalar_t__,int ,int,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nxp_fspi_do_op (struct nxp_fspi*,struct spi_mem_op const*) ;
 int nxp_fspi_fill_txfifo (struct nxp_fspi*,struct spi_mem_op const*) ;
 int nxp_fspi_invalid (struct nxp_fspi*) ;
 int nxp_fspi_prepare_lut (struct nxp_fspi*,struct spi_mem_op const*) ;
 int nxp_fspi_read_ahb (struct nxp_fspi*,struct spi_mem_op const*) ;
 int nxp_fspi_select_mem (struct nxp_fspi*,TYPE_3__*) ;
 struct nxp_fspi* spi_controller_get_devdata (int ) ;

__attribute__((used)) static int nxp_fspi_exec_op(struct spi_mem *mem, const struct spi_mem_op *op)
{
 struct nxp_fspi *f = spi_controller_get_devdata(mem->spi->master);
 int err = 0;

 mutex_lock(&f->lock);


 err = fspi_readl_poll_tout(f, f->iobase + FSPI_STS0,
       FSPI_STS0_ARB_IDLE, 1, POLL_TOUT, 1);
 WARN_ON(err);

 nxp_fspi_select_mem(f, mem->spi);

 nxp_fspi_prepare_lut(f, op);





 if (op->data.nbytes > (f->devtype_data->rxfifo - 4) &&
     op->data.dir == SPI_MEM_DATA_IN) {
  nxp_fspi_read_ahb(f, op);
 } else {
  if (op->data.nbytes && op->data.dir == SPI_MEM_DATA_OUT)
   nxp_fspi_fill_txfifo(f, op);

  err = nxp_fspi_do_op(f, op);
 }


 nxp_fspi_invalid(f);

 mutex_unlock(&f->lock);

 return err;
}
