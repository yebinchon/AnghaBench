
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zynq_qspi {int refclk; } ;
struct spi_device {int max_speed_hz; int mode; } ;


 int SPI_CPHA ;
 int SPI_CPOL ;
 int ZYNQ_QSPI_BAUD_DIV_MAX ;
 int ZYNQ_QSPI_BAUD_DIV_SHIFT ;
 int ZYNQ_QSPI_CONFIG_BDRATE_MASK ;
 int ZYNQ_QSPI_CONFIG_CPHA_MASK ;
 int ZYNQ_QSPI_CONFIG_CPOL_MASK ;
 int ZYNQ_QSPI_CONFIG_OFFSET ;
 int clk_get_rate (int ) ;
 int zynq_qspi_read (struct zynq_qspi*,int ) ;
 int zynq_qspi_write (struct zynq_qspi*,int ,int) ;

__attribute__((used)) static int zynq_qspi_config_op(struct zynq_qspi *xqspi, struct spi_device *spi)
{
 u32 config_reg, baud_rate_val = 0;
 while ((baud_rate_val < ZYNQ_QSPI_BAUD_DIV_MAX) &&
        (clk_get_rate(xqspi->refclk) / (2 << baud_rate_val)) >
  spi->max_speed_hz)
  baud_rate_val++;

 config_reg = zynq_qspi_read(xqspi, ZYNQ_QSPI_CONFIG_OFFSET);


 config_reg &= (~ZYNQ_QSPI_CONFIG_CPHA_MASK) &
        (~ZYNQ_QSPI_CONFIG_CPOL_MASK);
 if (spi->mode & SPI_CPHA)
  config_reg |= ZYNQ_QSPI_CONFIG_CPHA_MASK;
 if (spi->mode & SPI_CPOL)
  config_reg |= ZYNQ_QSPI_CONFIG_CPOL_MASK;

 config_reg &= ~ZYNQ_QSPI_CONFIG_BDRATE_MASK;
 config_reg |= (baud_rate_val << ZYNQ_QSPI_BAUD_DIV_SHIFT);
 zynq_qspi_write(xqspi, ZYNQ_QSPI_CONFIG_OFFSET, config_reg);

 return 0;
}
