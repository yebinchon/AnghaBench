
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm2835_spi {unsigned int regs; } ;


 int writel (int ,unsigned int) ;

__attribute__((used)) static inline void bcm2835_wr(struct bcm2835_spi *bs, unsigned reg, u32 val)
{
 writel(val, bs->regs + reg);
}
