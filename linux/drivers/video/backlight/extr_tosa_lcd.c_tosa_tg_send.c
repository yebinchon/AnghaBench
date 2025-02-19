
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;
struct spi_transfer {int len; int* tx_buf; int cs_change; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;


 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (struct spi_device*,struct spi_message*) ;

__attribute__((used)) static int tosa_tg_send(struct spi_device *spi, int adrs, uint8_t data)
{
 u8 buf[1];
 struct spi_message msg;
 struct spi_transfer xfer = {
  .len = 1,
  .cs_change = 0,
  .tx_buf = buf,
 };

 buf[0] = ((adrs & 0x07) << 5) | (data & 0x1f);
 spi_message_init(&msg);
 spi_message_add_tail(&xfer, &msg);

 return spi_sync(spi, &msg);
}
