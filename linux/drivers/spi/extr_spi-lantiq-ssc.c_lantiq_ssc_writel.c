
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct lantiq_ssc_spi {scalar_t__ regbase; } ;


 int __raw_writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void lantiq_ssc_writel(const struct lantiq_ssc_spi *spi, u32 val,
         u32 reg)
{
 __raw_writel(val, spi->regbase + reg);
}
