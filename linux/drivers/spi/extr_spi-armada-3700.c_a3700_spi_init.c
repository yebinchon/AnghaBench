
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct spi_master {int num_chipselect; int mode_bits; } ;
struct a3700_spi {struct spi_master* master; } ;


 int A3700_SPI_IF_CFG_REG ;
 int A3700_SPI_IF_DIN_CNT_REG ;
 int A3700_SPI_IF_HDR_CNT_REG ;
 int A3700_SPI_INT_MASK_REG ;
 int A3700_SPI_INT_STAT_REG ;
 unsigned int A3700_SPI_SRST ;
 int A3700_SPI_TIMEOUT ;
 int a3700_spi_auto_cs_unset (struct a3700_spi*) ;
 int a3700_spi_deactivate_cs (struct a3700_spi*,int) ;
 int a3700_spi_fifo_mode_set (struct a3700_spi*,int) ;
 int a3700_spi_mode_set (struct a3700_spi*,int ) ;
 unsigned int spireg_read (struct a3700_spi*,int ) ;
 int spireg_write (struct a3700_spi*,int ,unsigned int) ;
 int udelay (int ) ;

__attribute__((used)) static int a3700_spi_init(struct a3700_spi *a3700_spi)
{
 struct spi_master *master = a3700_spi->master;
 u32 val;
 int i, ret = 0;


 val = spireg_read(a3700_spi, A3700_SPI_IF_CFG_REG);
 val |= A3700_SPI_SRST;
 spireg_write(a3700_spi, A3700_SPI_IF_CFG_REG, val);

 udelay(A3700_SPI_TIMEOUT);

 val = spireg_read(a3700_spi, A3700_SPI_IF_CFG_REG);
 val &= ~A3700_SPI_SRST;
 spireg_write(a3700_spi, A3700_SPI_IF_CFG_REG, val);


 a3700_spi_auto_cs_unset(a3700_spi);
 for (i = 0; i < master->num_chipselect; i++)
  a3700_spi_deactivate_cs(a3700_spi, i);


 a3700_spi_fifo_mode_set(a3700_spi, 1);


 a3700_spi_mode_set(a3700_spi, master->mode_bits);


 spireg_write(a3700_spi, A3700_SPI_IF_HDR_CNT_REG, 0);
 spireg_write(a3700_spi, A3700_SPI_IF_DIN_CNT_REG, 0);


 spireg_write(a3700_spi, A3700_SPI_INT_MASK_REG, 0);
 spireg_write(a3700_spi, A3700_SPI_INT_STAT_REG, ~0U);

 return ret;
}
