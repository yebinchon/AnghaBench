
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trans ;
struct spi_transfer {int delay_usecs; } ;
struct spi_message {int dummy; } ;
struct cros_ec_spi {int last_transfer_ns; int spi; int end_of_msg_delay; } ;
struct cros_ec_device {int dev; struct cros_ec_spi* priv; } ;


 int dev_err (int ,char*,int) ;
 int ktime_get_ns () ;
 int memset (struct spi_transfer*,int ,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync_locked (int ,struct spi_message*) ;

__attribute__((used)) static int terminate_request(struct cros_ec_device *ec_dev)
{
 struct cros_ec_spi *ec_spi = ec_dev->priv;
 struct spi_message msg;
 struct spi_transfer trans;
 int ret;





 spi_message_init(&msg);
 memset(&trans, 0, sizeof(trans));
 trans.delay_usecs = ec_spi->end_of_msg_delay;
 spi_message_add_tail(&trans, &msg);

 ret = spi_sync_locked(ec_spi->spi, &msg);


 ec_spi->last_transfer_ns = ktime_get_ns();
 if (ret < 0) {
  dev_err(ec_dev->dev,
   "cs-deassert spi transfer failed: %d\n",
   ret);
 }

 return ret;
}
