
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bcm63xx_spi {scalar_t__* reg_offsets; scalar_t__ regs; } ;


 int ioread16be (scalar_t__) ;
 int readw (scalar_t__) ;

__attribute__((used)) static inline u16 bcm_spi_readw(struct bcm63xx_spi *bs,
    unsigned int offset)
{



 return readw(bs->regs + bs->reg_offsets[offset]);

}
