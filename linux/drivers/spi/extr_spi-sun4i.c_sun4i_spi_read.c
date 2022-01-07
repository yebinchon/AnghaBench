
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sun4i_spi {scalar_t__ base_addr; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 sun4i_spi_read(struct sun4i_spi *sspi, u32 reg)
{
 return readl(sspi->base_addr + reg);
}
