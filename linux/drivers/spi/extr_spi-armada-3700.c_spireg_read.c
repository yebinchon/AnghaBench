
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct a3700_spi {scalar_t__ base; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static u32 spireg_read(struct a3700_spi *a3700_spi, u32 offset)
{
 return readl(a3700_spi->base + offset);
}
