
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct spi_transfer {int len; int* tx_buf; int cs_change; } ;
struct spi_message {int dummy; } ;
struct corgi_lcd {int* buf; int spi_dev; } ;


 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;

__attribute__((used)) static int corgi_ssp_lcdtg_send(struct corgi_lcd *lcd, int adrs, uint8_t data)
{
 struct spi_message msg;
 struct spi_transfer xfer = {
  .len = 1,
  .cs_change = 0,
  .tx_buf = lcd->buf,
 };

 lcd->buf[0] = ((adrs & 0x07) << 5) | (data & 0x1f);
 spi_message_init(&msg);
 spi_message_add_tail(&xfer, &msg);

 return spi_sync(lcd->spi_dev, &msg);
}
