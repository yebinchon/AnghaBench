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
struct spidev_data {int /*<<< orphan*/  spi_lock; struct spi_device* spi; } ;
struct spi_message {int actual_length; } ;
struct spi_device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ESHUTDOWN ; 
 int FUNC0 (struct spi_device*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC3(struct spidev_data *spidev, struct spi_message *message)
{
	int status;
	struct spi_device *spi;

	FUNC1(&spidev->spi_lock);
	spi = spidev->spi;
	FUNC2(&spidev->spi_lock);

	if (spi == NULL)
		status = -ESHUTDOWN;
	else
		status = FUNC0(spi, message);

	if (status == 0)
		status = message->actual_length;

	return status;
}