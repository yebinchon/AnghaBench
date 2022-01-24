#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct device {int dummy; } ;
struct spi_device {int bits_per_word; int rt; struct device dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  mode; } ;
struct ec_response_get_protocol_info {int dummy; } ;
struct ec_host_response {int dummy; } ;
struct ec_host_request {int dummy; } ;
struct cros_ec_spi {int /*<<< orphan*/  last_transfer_ns; struct spi_device* spi; } ;
struct cros_ec_device {int dout_size; scalar_t__ din_size; int /*<<< orphan*/  phys_name; int /*<<< orphan*/  pkt_xfer; int /*<<< orphan*/  cmd_xfer; int /*<<< orphan*/  irq; struct cros_ec_spi* priv; struct device* dev; } ;

/* Variables and functions */
 scalar_t__ EC_MSG_PREAMBLE_COUNT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SPI_MODE_0 ; 
 int /*<<< orphan*/  cros_ec_cmd_xfer_spi ; 
 int /*<<< orphan*/  cros_ec_pkt_xfer_spi ; 
 int FUNC0 (struct cros_ec_device*) ; 
 int FUNC1 (struct device*,struct cros_ec_spi*) ; 
 int /*<<< orphan*/  FUNC2 (struct cros_ec_spi*,struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int) ; 
 void* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*,struct cros_ec_device*) ; 
 int FUNC9 (struct spi_device*) ; 

__attribute__((used)) static int FUNC10(struct spi_device *spi)
{
	struct device *dev = &spi->dev;
	struct cros_ec_device *ec_dev;
	struct cros_ec_spi *ec_spi;
	int err;

	spi->bits_per_word = 8;
	spi->mode = SPI_MODE_0;
	spi->rt = true;
	err = FUNC9(spi);
	if (err < 0)
		return err;

	ec_spi = FUNC6(dev, sizeof(*ec_spi), GFP_KERNEL);
	if (ec_spi == NULL)
		return -ENOMEM;
	ec_spi->spi = spi;
	ec_dev = FUNC6(dev, sizeof(*ec_dev), GFP_KERNEL);
	if (!ec_dev)
		return -ENOMEM;

	/* Check for any DT properties */
	FUNC2(ec_spi, dev);

	FUNC8(spi, ec_dev);
	ec_dev->dev = dev;
	ec_dev->priv = ec_spi;
	ec_dev->irq = spi->irq;
	ec_dev->cmd_xfer = cros_ec_cmd_xfer_spi;
	ec_dev->pkt_xfer = cros_ec_pkt_xfer_spi;
	ec_dev->phys_name = FUNC4(&ec_spi->spi->dev);
	ec_dev->din_size = EC_MSG_PREAMBLE_COUNT +
			   sizeof(struct ec_host_response) +
			   sizeof(struct ec_response_get_protocol_info);
	ec_dev->dout_size = sizeof(struct ec_host_request);

	ec_spi->last_transfer_ns = FUNC7();

	err = FUNC1(dev, ec_spi);
	if (err)
		return err;

	err = FUNC0(ec_dev);
	if (err) {
		FUNC3(dev, "cannot register EC\n");
		return err;
	}

	FUNC5(&spi->dev, true);

	return 0;
}