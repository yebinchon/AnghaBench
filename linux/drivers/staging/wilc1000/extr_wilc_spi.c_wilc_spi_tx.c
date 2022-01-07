
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wilc {int dev; } ;
struct spi_transfer {char* rx_buf; int delay_usecs; int len; int * tx_buf; } ;
struct spi_message {int is_dma_mapped; struct spi_device* spi; } ;
struct spi_device {int dev; } ;
typedef int msg ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USE_SPI_DMA ;
 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*,...) ;
 int kfree (char*) ;
 char* kzalloc (int ,int ) ;
 int memset (struct spi_message*,int ,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (struct spi_device*,struct spi_message*) ;
 struct spi_device* to_spi_device (int ) ;

__attribute__((used)) static int wilc_spi_tx(struct wilc *wilc, u8 *b, u32 len)
{
 struct spi_device *spi = to_spi_device(wilc->dev);
 int ret;
 struct spi_message msg;

 if (len > 0 && b) {
  struct spi_transfer tr = {
   .tx_buf = b,
   .len = len,
   .delay_usecs = 0,
  };
  char *r_buffer = kzalloc(len, GFP_KERNEL);

  if (!r_buffer)
   return -ENOMEM;

  tr.rx_buf = r_buffer;
  dev_dbg(&spi->dev, "Request writing %d bytes\n", len);

  memset(&msg, 0, sizeof(msg));
  spi_message_init(&msg);
  msg.spi = spi;
  msg.is_dma_mapped = USE_SPI_DMA;
  spi_message_add_tail(&tr, &msg);

  ret = spi_sync(spi, &msg);
  if (ret < 0)
   dev_err(&spi->dev, "SPI transaction failed\n");

  kfree(r_buffer);
 } else {
  dev_err(&spi->dev,
   "can't write data with the following length: %d\n",
   len);
  ret = -EINVAL;
 }

 return ret;
}
