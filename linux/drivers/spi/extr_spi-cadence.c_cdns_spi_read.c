
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cdns_spi {scalar_t__ regs; } ;


 scalar_t__ readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline u32 cdns_spi_read(struct cdns_spi *xspi, u32 offset)
{
 return readl_relaxed(xspi->regs + offset);
}
