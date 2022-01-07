
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stm32_qspi {int dummy; } ;


 int CCR_BUSWIDTH_4 ;

__attribute__((used)) static int stm32_qspi_get_mode(struct stm32_qspi *qspi, u8 buswidth)
{
 if (buswidth == 4)
  return CCR_BUSWIDTH_4;

 return buswidth;
}
