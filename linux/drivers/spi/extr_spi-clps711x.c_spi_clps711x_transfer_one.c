
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_transfer {scalar_t__ rx_buf; scalar_t__ tx_buf; int bits_per_word; int len; scalar_t__ speed_hz; } ;
struct spi_master {int dummy; } ;
struct spi_device {int max_speed_hz; } ;
struct spi_clps711x_data {int* tx_buf; int* rx_buf; int syncio; int bpw; int len; int spi_clk; } ;


 int SYNCIO_FRMLEN (int ) ;
 int SYNCIO_TXFRMEN ;
 int clk_set_rate (int ,int ) ;
 struct spi_clps711x_data* spi_master_get_devdata (struct spi_master*) ;
 int writel (int,int ) ;

__attribute__((used)) static int spi_clps711x_transfer_one(struct spi_master *master,
         struct spi_device *spi,
         struct spi_transfer *xfer)
{
 struct spi_clps711x_data *hw = spi_master_get_devdata(master);
 u8 data;

 clk_set_rate(hw->spi_clk, xfer->speed_hz ? : spi->max_speed_hz);

 hw->len = xfer->len;
 hw->bpw = xfer->bits_per_word;
 hw->tx_buf = (u8 *)xfer->tx_buf;
 hw->rx_buf = (u8 *)xfer->rx_buf;


 data = hw->tx_buf ? *hw->tx_buf++ : 0;
 writel(data | SYNCIO_FRMLEN(hw->bpw) | SYNCIO_TXFRMEN, hw->syncio);

 return 1;
}
