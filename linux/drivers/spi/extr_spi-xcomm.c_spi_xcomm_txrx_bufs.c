
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_xcomm {int i2c; int * buf; } ;
struct spi_transfer {int len; scalar_t__ rx_buf; scalar_t__ tx_buf; } ;
struct spi_device {int dummy; } ;


 int EIO ;
 int SPI_XCOMM_CMD_WRITE ;
 int i2c_master_recv (int ,scalar_t__,int) ;
 int i2c_master_send (int ,int *,int) ;
 int memcpy (int *,scalar_t__,int) ;

__attribute__((used)) static int spi_xcomm_txrx_bufs(struct spi_xcomm *spi_xcomm,
 struct spi_device *spi, struct spi_transfer *t)
{
 int ret;

 if (t->tx_buf) {
  spi_xcomm->buf[0] = SPI_XCOMM_CMD_WRITE;
  memcpy(spi_xcomm->buf + 1, t->tx_buf, t->len);

  ret = i2c_master_send(spi_xcomm->i2c, spi_xcomm->buf, t->len + 1);
  if (ret < 0)
   return ret;
  else if (ret != t->len + 1)
   return -EIO;
 } else if (t->rx_buf) {
  ret = i2c_master_recv(spi_xcomm->i2c, t->rx_buf, t->len);
  if (ret < 0)
   return ret;
  else if (ret != t->len)
   return -EIO;
 }

 return t->len;
}
