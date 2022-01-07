
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct efm32_spi_ddata {unsigned int base; } ;


 int writel_relaxed (int ,unsigned int) ;

__attribute__((used)) static void efm32_spi_write32(struct efm32_spi_ddata *ddata,
  u32 value, unsigned offset)
{
 writel_relaxed(value, ddata->base + offset);
}
