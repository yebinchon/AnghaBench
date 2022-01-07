
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_device {int bits_per_word; int master; } ;


 int CFG_IOPADMODE_MASK ;
 int CFG_SCLKCNT (int) ;
 int CFG_SPI_3W4WB (int) ;
 int CFG_SPI_ENA (int) ;
 int CFG_SPI_SEL (int) ;
 int CFG_TXBITS (int ) ;
 int IOPAD_DUMB18SPI ;
 int LCD_SPU_SPI_CTRL ;
 int SPU_IOPAD_CONTROL ;
 int readl_relaxed (void*) ;
 scalar_t__ spi_master_get_devdata (int ) ;
 int udelay (int) ;
 int writel (int,void*) ;
 int writel_relaxed (int,void*) ;

__attribute__((used)) static int lcd_spi_setup(struct spi_device *spi)
{
 void *reg_base =
  *(void **)spi_master_get_devdata(spi->master);
 u32 tmp;

 tmp = CFG_SCLKCNT(16) |
  CFG_TXBITS(spi->bits_per_word) |
  CFG_SPI_SEL(1) | CFG_SPI_ENA(1) |
  CFG_SPI_3W4WB(1);
 writel(tmp, reg_base + LCD_SPU_SPI_CTRL);






 tmp = readl_relaxed(reg_base + SPU_IOPAD_CONTROL);
 if ((tmp & CFG_IOPADMODE_MASK) != IOPAD_DUMB18SPI)
  writel_relaxed(IOPAD_DUMB18SPI |
   (tmp & ~CFG_IOPADMODE_MASK),
   reg_base + SPU_IOPAD_CONTROL);
 udelay(20);
 return 0;
}
