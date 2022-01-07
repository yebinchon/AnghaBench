
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct efm32_spi_ddata {unsigned int base; } ;


 int readl_relaxed (unsigned int) ;

__attribute__((used)) static u32 efm32_spi_read32(struct efm32_spi_ddata *ddata, unsigned offset)
{
 return readl_relaxed(ddata->base + offset);
}
