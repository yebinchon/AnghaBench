
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm2835aux_spi {unsigned int regs; } ;


 int readl (unsigned int) ;

__attribute__((used)) static inline u32 bcm2835aux_rd(struct bcm2835aux_spi *bs, unsigned reg)
{
 return readl(bs->regs + reg);
}
