
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct spi_transfer {int len; int cs_change; int* tx_buf; } ;
struct spi_message {int dummy; } ;
struct ltv350qv {int* buffer; int spi; } ;


 int LTV_OPC_DATA ;
 int LTV_OPC_INDEX ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;

__attribute__((used)) static int ltv350qv_write_reg(struct ltv350qv *lcd, u8 reg, u16 val)
{
 struct spi_message msg;
 struct spi_transfer index_xfer = {
  .len = 3,
  .cs_change = 1,
 };
 struct spi_transfer value_xfer = {
  .len = 3,
 };

 spi_message_init(&msg);


 lcd->buffer[0] = LTV_OPC_INDEX;
 lcd->buffer[1] = 0x00;
 lcd->buffer[2] = reg & 0x7f;
 index_xfer.tx_buf = lcd->buffer;
 spi_message_add_tail(&index_xfer, &msg);


 lcd->buffer[4] = LTV_OPC_DATA;
 lcd->buffer[5] = val >> 8;
 lcd->buffer[6] = val;
 value_xfer.tx_buf = lcd->buffer + 4;
 spi_message_add_tail(&value_xfer, &msg);

 return spi_sync(lcd->spi, &msg);
}
