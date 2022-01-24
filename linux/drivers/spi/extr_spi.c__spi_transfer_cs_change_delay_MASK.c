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
typedef  int u32 ;
struct spi_transfer {int cs_change_delay; int cs_change_delay_unit; int speed_hz; int /*<<< orphan*/  effective_speed_hz; } ;
struct spi_message {TYPE_1__* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
#define  SPI_DELAY_UNIT_NSECS 130 
#define  SPI_DELAY_UNIT_SCK 129 
#define  SPI_DELAY_UNIT_USECS 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC3(struct spi_message *msg,
					  struct spi_transfer *xfer)
{
	u32 delay = xfer->cs_change_delay;
	u32 unit = xfer->cs_change_delay_unit;
	u32 hz;

	/* return early on "fast" mode - for everything but USECS */
	if (!delay && unit != SPI_DELAY_UNIT_USECS)
		return;

	switch (unit) {
	case SPI_DELAY_UNIT_USECS:
		/* for compatibility use default of 10us */
		if (!delay)
			delay = 10000;
		else
			delay *= 1000;
		break;
	case SPI_DELAY_UNIT_NSECS: /* nothing to do here */
		break;
	case SPI_DELAY_UNIT_SCK:
		/* if there is no effective speed know, then approximate
		 * by underestimating with half the requested hz
		 */
		hz = xfer->effective_speed_hz ?: xfer->speed_hz / 2;
		delay *= FUNC0(1000000000, hz);
		break;
	default:
		FUNC2(&msg->spi->dev,
			     "Use of unsupported delay unit %i, using default of 10us\n",
			     xfer->cs_change_delay_unit);
		delay = 10000;
	}
	/* now sleep for the requested amount of time */
	FUNC1(delay);
}