
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int in; } ;
struct TYPE_6__ {int nbytes; TYPE_1__ buf; } ;
struct spi_mem_op {TYPE_3__ data; } ;
struct fsl_qspi {int selected; TYPE_2__* devtype_data; scalar_t__ ahb_addr; } ;
struct TYPE_5__ {int ahb_buf_size; } ;


 int memcpy_fromio (int ,scalar_t__,int ) ;

__attribute__((used)) static void fsl_qspi_read_ahb(struct fsl_qspi *q, const struct spi_mem_op *op)
{
 memcpy_fromio(op->data.buf.in,
        q->ahb_addr + q->selected * q->devtype_data->ahb_buf_size,
        op->data.nbytes);
}
