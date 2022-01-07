
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath79_spi {scalar_t__ base; } ;


 int ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 ath79_spi_rr(struct ath79_spi *sp, unsigned int reg)
{
 return ioread32(sp->base + reg);
}
