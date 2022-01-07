
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct spi_mem_op {int dummy; } ;


 size_t ARRAY_SIZE (int *) ;
 int ENOTSUPP ;
 scalar_t__ atmel_qspi_is_compatible (struct spi_mem_op const*,int *) ;
 int * atmel_qspi_modes ;

__attribute__((used)) static int atmel_qspi_find_mode(const struct spi_mem_op *op)
{
 u32 i;

 for (i = 0; i < ARRAY_SIZE(atmel_qspi_modes); i++)
  if (atmel_qspi_is_compatible(op, &atmel_qspi_modes[i]))
   return i;

 return -ENOTSUPP;
}
