
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath79_spi {scalar_t__ base; } ;


 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static inline void ath79_spi_wr(struct ath79_spi *sp, unsigned int reg, u32 val)
{
 iowrite32(val, sp->base + reg);
}
