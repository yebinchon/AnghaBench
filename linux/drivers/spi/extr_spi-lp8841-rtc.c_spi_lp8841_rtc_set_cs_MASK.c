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
struct spi_lp8841_rtc {int /*<<< orphan*/  iomem; int /*<<< orphan*/  state; } ;
struct spi_device {int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPI_LP8841_RTC_CE ; 
 struct spi_lp8841_rtc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct spi_device *spi, bool enable)
{
	struct spi_lp8841_rtc *data = FUNC0(spi->master);

	data->state = 0;
	FUNC2(data->state, data->iomem);
	if (enable) {
		FUNC1(4, 5);
		data->state |= SPI_LP8841_RTC_CE;
		FUNC2(data->state, data->iomem);
		FUNC1(4, 5);
	}
}