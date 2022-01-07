
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct spi_transfer {int len; int* tx_buf; } ;
struct spi_message {int dummy; } ;
struct lms501kf03 {int spi; } ;


 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;

__attribute__((used)) static int lms501kf03_spi_write_byte(struct lms501kf03 *lcd, int addr, int data)
{
 u16 buf[1];
 struct spi_message msg;

 struct spi_transfer xfer = {
  .len = 2,
  .tx_buf = buf,
 };

 buf[0] = (addr << 8) | data;

 spi_message_init(&msg);
 spi_message_add_tail(&xfer, &msg);

 return spi_sync(lcd->spi, &msg);
}
