
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rb4xx_spi {scalar_t__ base; } ;


 scalar_t__ __raw_readl (scalar_t__) ;

__attribute__((used)) static inline u32 rb4xx_read(struct rb4xx_spi *rbspi, u32 reg)
{
 return __raw_readl(rbspi->base + reg);
}
