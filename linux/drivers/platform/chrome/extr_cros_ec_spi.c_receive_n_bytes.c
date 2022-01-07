
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int trans ;
struct spi_transfer {int cs_change; int len; int * rx_buf; } ;
struct spi_message {int dummy; } ;
struct cros_ec_spi {int spi; } ;
struct cros_ec_device {int din_size; int dev; int * din; struct cros_ec_spi* priv; } ;


 int BUG_ON (int) ;
 int dev_err (int ,char*,int) ;
 int memset (struct spi_transfer*,int ,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync_locked (int ,struct spi_message*) ;

__attribute__((used)) static int receive_n_bytes(struct cros_ec_device *ec_dev, u8 *buf, int n)
{
 struct cros_ec_spi *ec_spi = ec_dev->priv;
 struct spi_transfer trans;
 struct spi_message msg;
 int ret;

 BUG_ON(buf - ec_dev->din + n > ec_dev->din_size);

 memset(&trans, 0, sizeof(trans));
 trans.cs_change = 1;
 trans.rx_buf = buf;
 trans.len = n;

 spi_message_init(&msg);
 spi_message_add_tail(&trans, &msg);
 ret = spi_sync_locked(ec_spi->spi, &msg);
 if (ret < 0)
  dev_err(ec_dev->dev, "spi transfer failed: %d\n", ret);

 return ret;
}
