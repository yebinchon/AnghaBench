
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ buswidth; scalar_t__ nbytes; } ;
struct TYPE_5__ {scalar_t__ buswidth; scalar_t__ nbytes; } ;
struct TYPE_4__ {scalar_t__ buswidth; } ;
struct spi_mem_op {TYPE_3__ data; TYPE_2__ addr; TYPE_1__ cmd; } ;
struct atmel_qspi_mode {scalar_t__ cmd_buswidth; scalar_t__ addr_buswidth; scalar_t__ data_buswidth; } ;



__attribute__((used)) static inline bool atmel_qspi_is_compatible(const struct spi_mem_op *op,
         const struct atmel_qspi_mode *mode)
{
 if (op->cmd.buswidth != mode->cmd_buswidth)
  return 0;

 if (op->addr.nbytes && op->addr.buswidth != mode->addr_buswidth)
  return 0;

 if (op->data.nbytes && op->data.buswidth != mode->data_buswidth)
  return 0;

 return 1;
}
