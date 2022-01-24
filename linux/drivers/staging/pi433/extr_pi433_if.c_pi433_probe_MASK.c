#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct spi_device {int mode; int bits_per_word; int /*<<< orphan*/  dev; int /*<<< orphan*/  max_speed_hz; } ;
struct pi433_device {int rx_active; int tx_active; int interrupt_rx_allowed; struct pi433_device* rx_buffer; int /*<<< orphan*/  devt; int /*<<< orphan*/ * tx_task_struct; TYPE_1__* cdev; int /*<<< orphan*/ * dev; int /*<<< orphan*/  minor; int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  tx_fifo_lock; int /*<<< orphan*/  tx_fifo; int /*<<< orphan*/  fifo_wait_queue; int /*<<< orphan*/  rx_wait_queue; int /*<<< orphan*/  tx_wait_queue; struct spi_device* spi; } ;
struct TYPE_5__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATAMODUL_MODE_PACKET ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MASK_PALEVEL_PA0 ; 
 int /*<<< orphan*/  MASK_PALEVEL_PA1 ; 
 int /*<<< orphan*/  MASK_PALEVEL_PA2 ; 
 int /*<<< orphan*/  MAX_MSG_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pi433_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fifty_ohm ; 
 int /*<<< orphan*/  FUNC12 (struct pi433_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct pi433_device*) ; 
 struct pi433_device* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,struct pi433_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 struct pi433_device* FUNC18 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pi433_class ; 
 int /*<<< orphan*/  pi433_dev ; 
 int /*<<< orphan*/  pi433_fops ; 
 int /*<<< orphan*/  FUNC20 (struct pi433_device*) ; 
 int FUNC21 (struct pi433_device*) ; 
 int /*<<< orphan*/  pi433_tx_thread ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int FUNC23 (struct spi_device*,int /*<<< orphan*/ ) ; 
 int FUNC24 (struct spi_device*,int /*<<< orphan*/ ) ; 
 int FUNC25 (struct spi_device*,int /*<<< orphan*/ ) ; 
 int FUNC26 (struct spi_device*,int /*<<< orphan*/ ) ; 
 int FUNC27 (struct spi_device*,int /*<<< orphan*/ ) ; 
 int FUNC28 (struct spi_device*,int) ; 
 int FUNC29 (struct pi433_device*) ; 
 int /*<<< orphan*/  FUNC30 (struct spi_device*,struct pi433_device*) ; 
 int FUNC31 (struct spi_device*) ; 
 int FUNC32 (struct spi_device*,int) ; 
 int /*<<< orphan*/  standby ; 

__attribute__((used)) static int FUNC33(struct spi_device *spi)
{
	struct pi433_device	*device;
	int			retval;

	/* setup spi parameters */
	spi->mode = 0x00;
	spi->bits_per_word = 8;
	/*
	 * spi->max_speed_hz = 10000000;
	 * 1MHz already set by device tree overlay
	 */

	retval = FUNC31(spi);
	if (retval) {
		FUNC9(&spi->dev, "configuration of SPI interface failed!\n");
		return retval;
	}

	FUNC9(&spi->dev,
		"spi interface setup: mode 0x%2x, %d bits per word, %dhz max speed",
		spi->mode, spi->bits_per_word, spi->max_speed_hz);

	/* Ping the chip by reading the version register */
	retval = FUNC32(spi, 0x10);
	if (retval < 0)
		return retval;

	switch (retval) {
	case 0x24:
		FUNC9(&spi->dev, "found pi433 (ver. 0x%x)", retval);
		break;
	default:
		FUNC9(&spi->dev, "unknown chip version: 0x%x", retval);
		return -ENODEV;
	}

	/* Allocate driver data */
	device = FUNC18(sizeof(*device), GFP_KERNEL);
	if (!device)
		return -ENOMEM;

	/* Initialize the driver data */
	device->spi = spi;
	device->rx_active = false;
	device->tx_active = false;
	device->interrupt_rx_allowed = false;

	/* init rx buffer */
	device->rx_buffer = FUNC15(MAX_MSG_SIZE, GFP_KERNEL);
	if (!device->rx_buffer) {
		retval = -ENOMEM;
		goto RX_failed;
	}

	/* init wait queues */
	FUNC13(&device->tx_wait_queue);
	FUNC13(&device->rx_wait_queue);
	FUNC13(&device->fifo_wait_queue);

	/* init fifo */
	FUNC0(device->tx_fifo);

	/* init mutexes and locks */
	FUNC19(&device->tx_fifo_lock);
	FUNC19(&device->rx_lock);

	/* setup GPIO (including irq_handler) for the different DIOs */
	retval = FUNC29(device);
	if (retval) {
		FUNC9(&spi->dev, "setup of GPIOs failed");
		goto GPIO_failed;
	}

	/* setup the radio module */
	retval = FUNC27(spi, standby);
	if (retval < 0)
		goto minor_failed;
	retval = FUNC26(spi, DATAMODUL_MODE_PACKET);
	if (retval < 0)
		goto minor_failed;
	retval = FUNC24(spi, MASK_PALEVEL_PA0);
	if (retval < 0)
		goto minor_failed;
	retval = FUNC23(spi, MASK_PALEVEL_PA1);
	if (retval < 0)
		goto minor_failed;
	retval = FUNC23(spi, MASK_PALEVEL_PA2);
	if (retval < 0)
		goto minor_failed;
	retval = FUNC28(spi, 13);
	if (retval < 0)
		goto minor_failed;
	retval = FUNC25(spi, fifty_ohm);
	if (retval < 0)
		goto minor_failed;

	/* determ minor number */
	retval = FUNC21(device);
	if (retval) {
		FUNC9(&spi->dev, "get of minor number failed");
		goto minor_failed;
	}

	/* create device */
	device->devt = FUNC3(FUNC2(pi433_dev), device->minor);
	device->dev = FUNC10(pi433_class,
				    &spi->dev,
				    device->devt,
				    device,
				    "pi433.%d",
				    device->minor);
	if (FUNC1(device->dev)) {
		FUNC22("pi433: device register failed\n");
		retval = FUNC4(device->dev);
		goto device_create_failed;
	} else {
		FUNC9(device->dev,
			"created device for major %d, minor %d\n",
			FUNC2(pi433_dev),
			device->minor);
	}

	/* start tx thread */
	device->tx_task_struct = FUNC16(pi433_tx_thread,
					     device,
					     "pi433.%d_tx_task",
					     device->minor);
	if (FUNC1(device->tx_task_struct)) {
		FUNC9(device->dev, "start of send thread failed");
		retval = FUNC4(device->tx_task_struct);
		goto send_thread_failed;
	}

	/* create cdev */
	device->cdev = FUNC6();
	if (!device->cdev) {
		FUNC9(device->dev, "allocation of cdev failed");
		goto cdev_failed;
	}
	device->cdev->owner = THIS_MODULE;
	FUNC8(device->cdev, &pi433_fops);
	retval = FUNC5(device->cdev, device->devt, 1);
	if (retval) {
		FUNC9(device->dev, "register of cdev failed");
		goto del_cdev;
	}

	/* spi setup */
	FUNC30(spi, device);

	return 0;

del_cdev:
	FUNC7(device->cdev);
cdev_failed:
	FUNC17(device->tx_task_struct);
send_thread_failed:
	FUNC11(pi433_class, device->devt);
device_create_failed:
	FUNC20(device);
minor_failed:
	FUNC12(device);
GPIO_failed:
	FUNC14(device->rx_buffer);
RX_failed:
	FUNC14(device);

	return retval;
}