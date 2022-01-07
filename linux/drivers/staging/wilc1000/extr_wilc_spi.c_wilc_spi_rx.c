
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wilc {int dev; } ;
struct spi_transfer {char* tx_buf; int delay_usecs; int len; int * rx_buf; } ;
struct spi_message {int is_dma_mapped; struct spi_device* spi; } ;
struct spi_device {int dev; } ;
typedef int msg ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USE_SPI_DMA ;
 int dev_err (int *,char*,...) ;
 int kfree (char*) ;
 char* kzalloc (int ,int ) ;
 int memset (struct spi_message*,int ,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (struct spi_device*,struct spi_message*) ;
 struct spi_device* to_spi_device (int ) ;

__attribute__((used)) static int wilc_spi_rx(struct wilc *wilc, u8 *rb, u32 rlen)
{
 struct spi_device *spi = to_spi_device(wilc->dev);
 int ret;

 if (rlen > 0) {
  struct spi_message msg;
  struct spi_transfer tr = {
   .rx_buf = rb,
   .len = rlen,
   .delay_usecs = 0,

  };
  char *t_buffer = kzalloc(rlen, GFP_KERNEL);

  if (!t_buffer)
   return -ENOMEM;

  tr.tx_buf = t_buffer;

  memset(&msg, 0, sizeof(msg));
  spi_message_init(&msg);
  msg.spi = spi;
  msg.is_dma_mapped = USE_SPI_DMA;
  spi_message_add_tail(&tr, &msg);

  ret = spi_sync(spi, &msg);
  if (ret < 0)
   dev_err(&spi->dev, "SPI transaction failed\n");
  kfree(t_buffer);
 } else {
  dev_err(&spi->dev,
   "can't read data with the following length: %u\n",
   rlen);
  ret = -EINVAL;
 }

 return ret;
}
