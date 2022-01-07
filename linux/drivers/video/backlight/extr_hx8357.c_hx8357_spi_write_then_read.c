
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfer ;
typedef int u8 ;
typedef int u16 ;
struct spi_transfer {int len; int bits_per_word; int* tx_buf; int* rx_buf; } ;
struct spi_message {int dummy; } ;
struct lcd_device {int dev; } ;
struct hx8357_data {int spi; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 int* kcalloc (int,int,int ) ;
 int kfree (int*) ;
 struct hx8357_data* lcd_get_data (struct lcd_device*) ;
 int memset (struct spi_transfer*,int ,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;

__attribute__((used)) static int hx8357_spi_write_then_read(struct lcd_device *lcdev,
    u8 *txbuf, u16 txlen,
    u8 *rxbuf, u16 rxlen)
{
 struct hx8357_data *lcd = lcd_get_data(lcdev);
 struct spi_message msg;
 struct spi_transfer xfer[2];
 u16 *local_txbuf = ((void*)0);
 int ret = 0;

 memset(xfer, 0, sizeof(xfer));
 spi_message_init(&msg);

 if (txlen) {
  int i;

  local_txbuf = kcalloc(txlen, sizeof(*local_txbuf), GFP_KERNEL);

  if (!local_txbuf)
   return -ENOMEM;

  for (i = 0; i < txlen; i++) {
   local_txbuf[i] = txbuf[i];
   if (i > 0)
    local_txbuf[i] |= 1 << 8;
  }

  xfer[0].len = 2 * txlen;
  xfer[0].bits_per_word = 9;
  xfer[0].tx_buf = local_txbuf;
  spi_message_add_tail(&xfer[0], &msg);
 }

 if (rxlen) {
  xfer[1].len = rxlen;
  xfer[1].bits_per_word = 8;
  xfer[1].rx_buf = rxbuf;
  spi_message_add_tail(&xfer[1], &msg);
 }

 ret = spi_sync(lcd->spi, &msg);
 if (ret < 0)
  dev_err(&lcdev->dev, "Couldn't send SPI data\n");

 if (txlen)
  kfree(local_txbuf);

 return ret;
}
