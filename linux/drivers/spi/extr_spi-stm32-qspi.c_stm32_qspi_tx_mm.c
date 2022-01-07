
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stm32_qspi {scalar_t__ mm_base; } ;
struct TYPE_4__ {int in; } ;
struct TYPE_6__ {int nbytes; TYPE_1__ buf; } ;
struct TYPE_5__ {scalar_t__ val; } ;
struct spi_mem_op {TYPE_3__ data; TYPE_2__ addr; } ;


 int memcpy_fromio (int ,scalar_t__,int ) ;

__attribute__((used)) static int stm32_qspi_tx_mm(struct stm32_qspi *qspi,
       const struct spi_mem_op *op)
{
 memcpy_fromio(op->data.buf.in, qspi->mm_base + op->addr.val,
        op->data.nbytes);
 return 0;
}
