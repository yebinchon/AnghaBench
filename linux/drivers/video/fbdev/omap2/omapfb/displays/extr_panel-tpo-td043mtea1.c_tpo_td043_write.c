
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfer ;
typedef int u8 ;
typedef int u16 ;
struct spi_transfer {int* tx_buf; int bits_per_word; int len; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dev; } ;


 int dev_warn (int *,char*,int) ;
 int memset (struct spi_transfer*,int ,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (struct spi_device*,struct spi_message*) ;

__attribute__((used)) static int tpo_td043_write(struct spi_device *spi, u8 addr, u8 data)
{
 struct spi_message m;
 struct spi_transfer xfer;
 u16 w;
 int r;

 spi_message_init(&m);

 memset(&xfer, 0, sizeof(xfer));

 w = ((u16)addr << 10) | (1 << 8) | data;
 xfer.tx_buf = &w;
 xfer.bits_per_word = 16;
 xfer.len = 2;
 spi_message_add_tail(&xfer, &m);

 r = spi_sync(spi, &m);
 if (r < 0)
  dev_warn(&spi->dev, "failed to write to LCD reg (%d)\n", r);
 return r;
}
