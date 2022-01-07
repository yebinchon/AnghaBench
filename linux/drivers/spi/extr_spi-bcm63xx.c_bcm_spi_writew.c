
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bcm63xx_spi {scalar_t__* reg_offsets; scalar_t__ regs; } ;


 int iowrite16be (int ,scalar_t__) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static inline void bcm_spi_writew(struct bcm63xx_spi *bs,
      u16 value, unsigned int offset)
{



 writew(value, bs->regs + bs->reg_offsets[offset]);

}
