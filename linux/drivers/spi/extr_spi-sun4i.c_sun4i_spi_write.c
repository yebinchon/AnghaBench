
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sun4i_spi {scalar_t__ base_addr; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void sun4i_spi_write(struct sun4i_spi *sspi, u32 reg, u32 value)
{
 writel(value, sspi->base_addr + reg);
}
