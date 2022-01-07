
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int len; int* rx_buf; unsigned char* tx_buf; } ;
struct ad2s1210_state {int* rx; unsigned char* tx; int sdev; } ;


 unsigned char AD2S1210_MSB_IS_HIGH ;
 unsigned char AD2S1210_REG_FAULT ;
 int MOD_CONFIG ;
 int ad2s1210_set_mode (int ,struct ad2s1210_state*) ;
 int spi_sync_transfer (int ,struct spi_transfer*,int) ;

__attribute__((used)) static int ad2s1210_config_read(struct ad2s1210_state *st,
    unsigned char address)
{
 struct spi_transfer xfer = {
  .len = 2,
  .rx_buf = st->rx,
  .tx_buf = st->tx,
 };
 int ret = 0;

 ad2s1210_set_mode(MOD_CONFIG, st);
 st->tx[0] = address | AD2S1210_MSB_IS_HIGH;
 st->tx[1] = AD2S1210_REG_FAULT;
 ret = spi_sync_transfer(st->sdev, &xfer, 1);
 if (ret < 0)
  return ret;

 return st->rx[1];
}
