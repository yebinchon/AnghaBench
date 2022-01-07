
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfer ;
typedef int u8 ;
struct spi_transfer {int* tx_buf; int bits_per_word; int len; int* rx_buf; } ;
struct spi_message {int dummy; } ;
struct panel_drv_data {TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int BUG_ON (int ) ;
 int dev_dbg (int *,char*,int) ;
 int memset (struct spi_transfer*,int ,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (TYPE_1__*,struct spi_message*) ;

__attribute__((used)) static void acx565akm_transfer(struct panel_drv_data *ddata, int cmd,
         const u8 *wbuf, int wlen, u8 *rbuf, int rlen)
{
 struct spi_message m;
 struct spi_transfer *x, xfer[5];
 int r;

 BUG_ON(ddata->spi == ((void*)0));

 spi_message_init(&m);

 memset(xfer, 0, sizeof(xfer));
 x = &xfer[0];

 cmd &= 0xff;
 x->tx_buf = &cmd;
 x->bits_per_word = 9;
 x->len = 2;

 if (rlen > 1 && wlen == 0) {





  x->bits_per_word = 10;
  cmd <<= 1;
 }
 spi_message_add_tail(x, &m);

 if (wlen) {
  x++;
  x->tx_buf = wbuf;
  x->len = wlen;
  x->bits_per_word = 9;
  spi_message_add_tail(x, &m);
 }

 if (rlen) {
  x++;
  x->rx_buf = rbuf;
  x->len = rlen;
  spi_message_add_tail(x, &m);
 }

 r = spi_sync(ddata->spi, &m);
 if (r < 0)
  dev_dbg(&ddata->spi->dev, "spi_sync %d\n", r);
}
