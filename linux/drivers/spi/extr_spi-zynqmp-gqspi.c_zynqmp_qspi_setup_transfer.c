
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int u32 ;
struct zynqmp_qspi {int refclk; } ;
struct spi_transfer {int speed_hz; } ;
struct spi_device {int max_speed_hz; int mode; int master; } ;


 int GQSPI_BAUD_DIV_MAX ;
 int GQSPI_BAUD_DIV_SHIFT ;
 int GQSPI_CFG_BAUD_RATE_DIV_MASK ;
 int GQSPI_CFG_BAUD_RATE_DIV_SHIFT ;
 int GQSPI_CFG_CLK_PHA_MASK ;
 int GQSPI_CFG_CLK_POL_MASK ;
 int GQSPI_CONFIG_OFST ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int clk_get_rate (int ) ;
 struct zynqmp_qspi* spi_master_get_devdata (int ) ;
 int zynqmp_gqspi_read (struct zynqmp_qspi*,int ) ;
 int zynqmp_gqspi_write (struct zynqmp_qspi*,int ,int) ;

__attribute__((used)) static int zynqmp_qspi_setup_transfer(struct spi_device *qspi,
          struct spi_transfer *transfer)
{
 struct zynqmp_qspi *xqspi = spi_master_get_devdata(qspi->master);
 ulong clk_rate;
 u32 config_reg, req_hz, baud_rate_val = 0;

 if (transfer)
  req_hz = transfer->speed_hz;
 else
  req_hz = qspi->max_speed_hz;



 clk_rate = clk_get_rate(xqspi->refclk);

 while ((baud_rate_val < GQSPI_BAUD_DIV_MAX) &&
        (clk_rate /
  (GQSPI_BAUD_DIV_SHIFT << baud_rate_val)) > req_hz)
  baud_rate_val++;

 config_reg = zynqmp_gqspi_read(xqspi, GQSPI_CONFIG_OFST);


 config_reg &= (~GQSPI_CFG_CLK_PHA_MASK) & (~GQSPI_CFG_CLK_POL_MASK);

 if (qspi->mode & SPI_CPHA)
  config_reg |= GQSPI_CFG_CLK_PHA_MASK;
 if (qspi->mode & SPI_CPOL)
  config_reg |= GQSPI_CFG_CLK_POL_MASK;

 config_reg &= ~GQSPI_CFG_BAUD_RATE_DIV_MASK;
 config_reg |= (baud_rate_val << GQSPI_CFG_BAUD_RATE_DIV_SHIFT);
 zynqmp_gqspi_write(xqspi, GQSPI_CONFIG_OFST, config_reg);
 return 0;
}
