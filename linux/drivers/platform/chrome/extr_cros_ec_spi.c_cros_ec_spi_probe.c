
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct spi_device {int bits_per_word; int rt; struct device dev; int irq; int mode; } ;
struct ec_response_get_protocol_info {int dummy; } ;
struct ec_host_response {int dummy; } ;
struct ec_host_request {int dummy; } ;
struct cros_ec_spi {int last_transfer_ns; struct spi_device* spi; } ;
struct cros_ec_device {int dout_size; scalar_t__ din_size; int phys_name; int pkt_xfer; int cmd_xfer; int irq; struct cros_ec_spi* priv; struct device* dev; } ;


 scalar_t__ EC_MSG_PREAMBLE_COUNT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SPI_MODE_0 ;
 int cros_ec_cmd_xfer_spi ;
 int cros_ec_pkt_xfer_spi ;
 int cros_ec_register (struct cros_ec_device*) ;
 int cros_ec_spi_devm_high_pri_alloc (struct device*,struct cros_ec_spi*) ;
 int cros_ec_spi_dt_probe (struct cros_ec_spi*,struct device*) ;
 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;
 int device_init_wakeup (struct device*,int) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int ktime_get_ns () ;
 int spi_set_drvdata (struct spi_device*,struct cros_ec_device*) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int cros_ec_spi_probe(struct spi_device *spi)
{
 struct device *dev = &spi->dev;
 struct cros_ec_device *ec_dev;
 struct cros_ec_spi *ec_spi;
 int err;

 spi->bits_per_word = 8;
 spi->mode = SPI_MODE_0;
 spi->rt = 1;
 err = spi_setup(spi);
 if (err < 0)
  return err;

 ec_spi = devm_kzalloc(dev, sizeof(*ec_spi), GFP_KERNEL);
 if (ec_spi == ((void*)0))
  return -ENOMEM;
 ec_spi->spi = spi;
 ec_dev = devm_kzalloc(dev, sizeof(*ec_dev), GFP_KERNEL);
 if (!ec_dev)
  return -ENOMEM;


 cros_ec_spi_dt_probe(ec_spi, dev);

 spi_set_drvdata(spi, ec_dev);
 ec_dev->dev = dev;
 ec_dev->priv = ec_spi;
 ec_dev->irq = spi->irq;
 ec_dev->cmd_xfer = cros_ec_cmd_xfer_spi;
 ec_dev->pkt_xfer = cros_ec_pkt_xfer_spi;
 ec_dev->phys_name = dev_name(&ec_spi->spi->dev);
 ec_dev->din_size = EC_MSG_PREAMBLE_COUNT +
      sizeof(struct ec_host_response) +
      sizeof(struct ec_response_get_protocol_info);
 ec_dev->dout_size = sizeof(struct ec_host_request);

 ec_spi->last_transfer_ns = ktime_get_ns();

 err = cros_ec_spi_devm_high_pri_alloc(dev, ec_spi);
 if (err)
  return err;

 err = cros_ec_register(ec_dev);
 if (err) {
  dev_err(dev, "cannot register EC\n");
  return err;
 }

 device_init_wakeup(&spi->dev, 1);

 return 0;
}
