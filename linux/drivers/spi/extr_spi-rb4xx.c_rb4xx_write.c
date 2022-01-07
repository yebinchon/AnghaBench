
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rb4xx_spi {scalar_t__ base; } ;


 int __raw_writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void rb4xx_write(struct rb4xx_spi *rbspi, u32 reg, u32 value)
{
 __raw_writel(value, rbspi->base + reg);
}
