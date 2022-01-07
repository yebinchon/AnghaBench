
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spi_device {int mode; int master; } ;
struct sirfsoc_spi {int fifo_size; int type; TYPE_1__* regs; scalar_t__ base; } ;
struct TYPE_2__ {scalar_t__ usp_mode1; scalar_t__ spi_ctrl; scalar_t__ rxfifo_level_chk; scalar_t__ txfifo_level_chk; } ;


 int SIRFSOC_SPI_CLK_IDLE_STAT ;
 int SIRFSOC_SPI_CS_IDLE_STAT ;
 int SIRFSOC_SPI_CS_IO_MODE ;
 int SIRFSOC_SPI_DRV_POS_EDGE ;
 int SIRFSOC_SPI_FIFO_HC_OFFSET ;
 int SIRFSOC_SPI_FIFO_LC_OFFSET ;
 int SIRFSOC_SPI_FIFO_LEVEL_CHK_MASK (struct sirfsoc_spi*,int) ;
 int SIRFSOC_SPI_FIFO_SC_OFFSET ;
 int SIRFSOC_SPI_TRAN_MSB ;
 int SIRFSOC_USP_CS_HIGH_VALID ;
 int SIRFSOC_USP_LSB ;
 int SIRFSOC_USP_RXD_FALLING_EDGE ;
 int SIRFSOC_USP_SCLK_IDLE_STAT ;
 int SIRFSOC_USP_SYNC_MODE ;
 int SIRFSOC_USP_TFS_IO_INPUT ;
 int SIRFSOC_USP_TFS_IO_MODE ;
 int SIRFSOC_USP_TXD_FALLING_EDGE ;



 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_CS_HIGH ;
 int SPI_LSB_FIRST ;
 int readl (scalar_t__) ;
 struct sirfsoc_spi* spi_master_get_devdata (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int spi_sirfsoc_config_mode(struct spi_device *spi)
{
 struct sirfsoc_spi *sspi;
 u32 regval, usp_mode1;

 sspi = spi_master_get_devdata(spi->master);
 regval = readl(sspi->base + sspi->regs->spi_ctrl);
 usp_mode1 = readl(sspi->base + sspi->regs->usp_mode1);
 if (!(spi->mode & SPI_CS_HIGH)) {
  regval |= SIRFSOC_SPI_CS_IDLE_STAT;
  usp_mode1 &= ~SIRFSOC_USP_CS_HIGH_VALID;
 } else {
  regval &= ~SIRFSOC_SPI_CS_IDLE_STAT;
  usp_mode1 |= SIRFSOC_USP_CS_HIGH_VALID;
 }
 if (!(spi->mode & SPI_LSB_FIRST)) {
  regval |= SIRFSOC_SPI_TRAN_MSB;
  usp_mode1 &= ~SIRFSOC_USP_LSB;
 } else {
  regval &= ~SIRFSOC_SPI_TRAN_MSB;
  usp_mode1 |= SIRFSOC_USP_LSB;
 }
 if (spi->mode & SPI_CPOL) {
  regval |= SIRFSOC_SPI_CLK_IDLE_STAT;
  usp_mode1 |= SIRFSOC_USP_SCLK_IDLE_STAT;
 } else {
  regval &= ~SIRFSOC_SPI_CLK_IDLE_STAT;
  usp_mode1 &= ~SIRFSOC_USP_SCLK_IDLE_STAT;
 }




 if (((spi->mode & SPI_CPOL) && (spi->mode & SPI_CPHA)) ||
     (!(spi->mode & SPI_CPOL) && !(spi->mode & SPI_CPHA))) {
  regval &= ~SIRFSOC_SPI_DRV_POS_EDGE;
  usp_mode1 |= (SIRFSOC_USP_TXD_FALLING_EDGE |
    SIRFSOC_USP_RXD_FALLING_EDGE);
 } else {
  regval |= SIRFSOC_SPI_DRV_POS_EDGE;
  usp_mode1 &= ~(SIRFSOC_USP_RXD_FALLING_EDGE |
    SIRFSOC_USP_TXD_FALLING_EDGE);
 }
 writel((SIRFSOC_SPI_FIFO_LEVEL_CHK_MASK(sspi, sspi->fifo_size - 2) <<
  SIRFSOC_SPI_FIFO_SC_OFFSET) |
  (SIRFSOC_SPI_FIFO_LEVEL_CHK_MASK(sspi, sspi->fifo_size / 2) <<
  SIRFSOC_SPI_FIFO_LC_OFFSET) |
  (SIRFSOC_SPI_FIFO_LEVEL_CHK_MASK(sspi, 2) <<
  SIRFSOC_SPI_FIFO_HC_OFFSET),
  sspi->base + sspi->regs->txfifo_level_chk);
 writel((SIRFSOC_SPI_FIFO_LEVEL_CHK_MASK(sspi, 2) <<
  SIRFSOC_SPI_FIFO_SC_OFFSET) |
  (SIRFSOC_SPI_FIFO_LEVEL_CHK_MASK(sspi, sspi->fifo_size / 2) <<
  SIRFSOC_SPI_FIFO_LC_OFFSET) |
  (SIRFSOC_SPI_FIFO_LEVEL_CHK_MASK(sspi, sspi->fifo_size - 2) <<
  SIRFSOC_SPI_FIFO_HC_OFFSET),
  sspi->base + sspi->regs->rxfifo_level_chk);




 switch (sspi->type) {
 case 130:
  regval |= SIRFSOC_SPI_CS_IO_MODE;
  writel(regval, sspi->base + sspi->regs->spi_ctrl);
  break;
 case 128:
 case 129:
  usp_mode1 |= SIRFSOC_USP_SYNC_MODE;
  usp_mode1 |= SIRFSOC_USP_TFS_IO_MODE;
  usp_mode1 &= ~SIRFSOC_USP_TFS_IO_INPUT;
  writel(usp_mode1, sspi->base + sspi->regs->usp_mode1);
  break;
 }

 return 0;
}
