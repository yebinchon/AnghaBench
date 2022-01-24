#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct spidev_data {int /*<<< orphan*/  spi_lock; TYPE_1__* spi; int /*<<< orphan*/  speed_hz; struct spidev_data* rx_buffer; struct spidev_data* tx_buffer; int /*<<< orphan*/  users; } ;
struct inode {int dummy; } ;
struct file {struct spidev_data* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_speed_hz; } ;

/* Variables and functions */
 int /*<<< orphan*/  device_list_lock ; 
 int /*<<< orphan*/  FUNC0 (struct spidev_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *filp)
{
	struct spidev_data	*spidev;

	FUNC1(&device_list_lock);
	spidev = filp->private_data;
	filp->private_data = NULL;

	/* last close? */
	spidev->users--;
	if (!spidev->users) {
		int		dofree;

		FUNC0(spidev->tx_buffer);
		spidev->tx_buffer = NULL;

		FUNC0(spidev->rx_buffer);
		spidev->rx_buffer = NULL;

		FUNC3(&spidev->spi_lock);
		if (spidev->spi)
			spidev->speed_hz = spidev->spi->max_speed_hz;

		/* ... after we unbound from the underlying device? */
		dofree = (spidev->spi == NULL);
		FUNC4(&spidev->spi_lock);

		if (dofree)
			FUNC0(spidev);
	}
	FUNC2(&device_list_lock);

	return 0;
}