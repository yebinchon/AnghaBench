
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct efm32_spi_ddata {int dummy; } ;


 int REG_ROUTE ;
 int REG_ROUTE_LOCATION__MASK ;
 int __ffs (int) ;
 int efm32_spi_read32 (struct efm32_spi_ddata*,int ) ;

__attribute__((used)) static u32 efm32_spi_get_configured_location(struct efm32_spi_ddata *ddata)
{
 u32 reg = efm32_spi_read32(ddata, REG_ROUTE);

 return (reg & REG_ROUTE_LOCATION__MASK) >> __ffs(REG_ROUTE_LOCATION__MASK);
}
