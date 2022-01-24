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
struct usb_hcd {int /*<<< orphan*/  flags; } ;
struct device {struct max3421_hcd_platform_data* platform_data; scalar_t__ of_node; } ;
struct spi_device {int irq; struct device dev; } ;
struct max3421_hcd_platform_data {int vbus_active_level; int vbus_gpout; } ;
struct max3421_hcd {scalar_t__ spi_thread; void* rx; void* tx; int /*<<< orphan*/  ep_list; struct max3421_hcd* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_OF ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HCD_FLAG_POLL_RH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int MAX3421_GPOUT_COUNT ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct max3421_hcd_platform_data*) ; 
 struct max3421_hcd_platform_data* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct max3421_hcd* FUNC7 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 void* FUNC9 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct usb_hcd*,char*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  max3421_hcd_desc ; 
 struct max3421_hcd* max3421_hcd_list ; 
 int /*<<< orphan*/  max3421_irq_handler ; 
 int FUNC12 (struct device*,struct max3421_hcd_platform_data*) ; 
 int /*<<< orphan*/  max3421_spi_thread ; 
 int FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (struct spi_device*) ; 
 int FUNC16 (struct usb_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC17 (int /*<<< orphan*/ *,struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_hcd*) ; 

__attribute__((used)) static int
FUNC19(struct spi_device *spi)
{
	struct device *dev = &spi->dev;
	struct max3421_hcd *max3421_hcd;
	struct usb_hcd *hcd = NULL;
	struct max3421_hcd_platform_data *pdata = NULL;
	int retval = -ENOMEM;

	if (FUNC15(spi) < 0) {
		FUNC3(&spi->dev, "Unable to setup SPI bus");
		return -EFAULT;
	}

	if (!spi->irq) {
		FUNC3(dev, "Failed to get SPI IRQ");
		return -EFAULT;
	}

	if (FUNC2(CONFIG_OF) && dev->of_node) {
		pdata = FUNC6(&spi->dev, sizeof(*pdata), GFP_KERNEL);
		if (!pdata) {
			retval = -ENOMEM;
			goto error;
		}
		retval = FUNC12(dev, pdata);
		if (retval)
			goto error;

		spi->dev.platform_data = pdata;
	}

	pdata = spi->dev.platform_data;
	if (!pdata) {
		FUNC3(&spi->dev, "driver configuration data is not provided\n");
		retval = -EFAULT;
		goto error;
	}
	if (pdata->vbus_active_level > 1) {
		FUNC3(&spi->dev, "vbus active level value %d is out of range (0/1)\n", pdata->vbus_active_level);
		retval = -EINVAL;
		goto error;
	}
	if (pdata->vbus_gpout < 1 || pdata->vbus_gpout > MAX3421_GPOUT_COUNT) {
		FUNC3(&spi->dev, "vbus gpout value %d is out of range (1..8)\n", pdata->vbus_gpout);
		retval = -EINVAL;
		goto error;
	}

	hcd = FUNC17(&max3421_hcd_desc, &spi->dev,
			     FUNC4(&spi->dev));
	if (!hcd) {
		FUNC3(&spi->dev, "failed to create HCD structure\n");
		goto error;
	}
	FUNC14(HCD_FLAG_POLL_RH, &hcd->flags);
	max3421_hcd = FUNC7(hcd);
	max3421_hcd->next = max3421_hcd_list;
	max3421_hcd_list = max3421_hcd;
	FUNC1(&max3421_hcd->ep_list);

	max3421_hcd->tx = FUNC9(sizeof(*max3421_hcd->tx), GFP_KERNEL);
	if (!max3421_hcd->tx)
		goto error;
	max3421_hcd->rx = FUNC9(sizeof(*max3421_hcd->rx), GFP_KERNEL);
	if (!max3421_hcd->rx)
		goto error;

	max3421_hcd->spi_thread = FUNC10(max3421_spi_thread, hcd,
					      "max3421_spi_thread");
	if (max3421_hcd->spi_thread == FUNC0(-ENOMEM)) {
		FUNC3(&spi->dev,
			"failed to create SPI thread (out of memory)\n");
		goto error;
	}

	retval = FUNC16(hcd, 0, 0);
	if (retval) {
		FUNC3(&spi->dev, "failed to add HCD\n");
		goto error;
	}

	retval = FUNC13(spi->irq, max3421_irq_handler,
			     IRQF_TRIGGER_LOW, "max3421", hcd);
	if (retval < 0) {
		FUNC3(&spi->dev, "failed to request irq %d\n", spi->irq);
		goto error;
	}
	return 0;

error:
	if (FUNC2(CONFIG_OF) && dev->of_node && pdata) {
		FUNC5(&spi->dev, pdata);
		spi->dev.platform_data = NULL;
	}

	if (hcd) {
		FUNC8(max3421_hcd->tx);
		FUNC8(max3421_hcd->rx);
		if (max3421_hcd->spi_thread)
			FUNC11(max3421_hcd->spi_thread);
		FUNC18(hcd);
	}
	return retval;
}