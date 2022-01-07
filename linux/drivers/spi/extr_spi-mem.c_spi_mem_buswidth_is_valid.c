
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ SPI_MEM_MAX_BUSWIDTH ;
 int hweight8 (scalar_t__) ;

__attribute__((used)) static bool spi_mem_buswidth_is_valid(u8 buswidth)
{
 if (hweight8(buswidth) > 1 || buswidth > SPI_MEM_MAX_BUSWIDTH)
  return 0;

 return 1;
}
