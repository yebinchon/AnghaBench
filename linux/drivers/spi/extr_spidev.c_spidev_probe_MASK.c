#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct spidev_data {int /*<<< orphan*/  speed_hz; int /*<<< orphan*/  device_entry; int /*<<< orphan*/  devt; int /*<<< orphan*/  buf_lock; int /*<<< orphan*/  spi_lock; struct spi_device* spi; } ;
struct TYPE_5__ {scalar_t__ of_node; } ;
struct spi_device {int /*<<< orphan*/  max_speed_hz; TYPE_2__ dev; int /*<<< orphan*/  chip_select; TYPE_1__* master; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  bus_num; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long N_SPI_MINORS ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  SPIDEV_MAJOR ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 struct device* FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,struct spidev_data*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  device_list ; 
 int /*<<< orphan*/  device_list_lock ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct spidev_data*) ; 
 struct spidev_data* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  minors ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC14 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct spi_device*,struct spidev_data*) ; 
 int /*<<< orphan*/  spidev_class ; 
 int /*<<< orphan*/  FUNC16 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct spi_device *spi)
{
	struct spidev_data	*spidev;
	int			status;
	unsigned long		minor;

	/*
	 * spidev should never be referenced in DT without a specific
	 * compatible string, it is a Linux implementation thing
	 * rather than a description of the hardware.
	 */
	FUNC3(spi->dev.of_node &&
	     FUNC13(spi->dev.of_node, "spidev"),
	     "%pOF: buggy DT: spidev listed directly in DT\n", spi->dev.of_node);

	FUNC16(spi);

	/* Allocate driver data */
	spidev = FUNC8(sizeof(*spidev), GFP_KERNEL);
	if (!spidev)
		return -ENOMEM;

	/* Initialize the driver data */
	spidev->spi = spi;
	FUNC17(&spidev->spi_lock);
	FUNC10(&spidev->buf_lock);

	FUNC0(&spidev->device_entry);

	/* If we can allocate a minor number, hook up this device.
	 * Reusing minors is fine so long as udev or mdev is working.
	 */
	FUNC11(&device_list_lock);
	minor = FUNC6(minors, N_SPI_MINORS);
	if (minor < N_SPI_MINORS) {
		struct device *dev;

		spidev->devt = FUNC1(SPIDEV_MAJOR, minor);
		dev = FUNC5(spidev_class, &spi->dev, spidev->devt,
				    spidev, "spidev%d.%d",
				    spi->master->bus_num, spi->chip_select);
		status = FUNC2(dev);
	} else {
		FUNC4(&spi->dev, "no minor number available!\n");
		status = -ENODEV;
	}
	if (status == 0) {
		FUNC14(minor, minors);
		FUNC9(&spidev->device_entry, &device_list);
	}
	FUNC12(&device_list_lock);

	spidev->speed_hz = spi->max_speed_hz;

	if (status == 0)
		FUNC15(spi, spidev);
	else
		FUNC7(spidev);

	return status;
}