
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cdns_spi {scalar_t__ regs; } ;


 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void cdns_spi_write(struct cdns_spi *xspi, u32 offset, u32 val)
{
 writel_relaxed(val, xspi->regs + offset);
}
