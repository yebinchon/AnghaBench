
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct a3700_spi {scalar_t__ base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void spireg_write(struct a3700_spi *a3700_spi, u32 offset, u32 data)
{
 writel(data, a3700_spi->base + offset);
}
