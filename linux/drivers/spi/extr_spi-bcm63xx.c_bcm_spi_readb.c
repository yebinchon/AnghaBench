
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bcm63xx_spi {scalar_t__* reg_offsets; scalar_t__ regs; } ;


 int readb (scalar_t__) ;

__attribute__((used)) static inline u8 bcm_spi_readb(struct bcm63xx_spi *bs,
          unsigned int offset)
{
 return readb(bs->regs + bs->reg_offsets[offset]);
}
