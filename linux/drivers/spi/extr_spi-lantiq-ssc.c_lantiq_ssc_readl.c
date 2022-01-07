
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct lantiq_ssc_spi {scalar_t__ regbase; } ;


 scalar_t__ __raw_readl (scalar_t__) ;

__attribute__((used)) static u32 lantiq_ssc_readl(const struct lantiq_ssc_spi *spi, u32 reg)
{
 return __raw_readl(spi->regbase + reg);
}
