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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct rtc_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rtc_device*) ; 
 int FUNC1 (struct rtc_device*) ; 
 int /*<<< orphan*/  RX4581_REG_SC ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct rtc_device* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  rx4581_rtc_ops ; 
 int /*<<< orphan*/  FUNC4 (struct spi_device*,struct rtc_device*) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi)
{
	struct rtc_device *rtc;
	unsigned char tmp;
	int res;

	res = FUNC3(&spi->dev, RX4581_REG_SC, &tmp);
	if (res != 0)
		return res;

	rtc = FUNC2(&spi->dev, "rx4581",
				&rx4581_rtc_ops, THIS_MODULE);
	if (FUNC0(rtc))
		return FUNC1(rtc);

	FUNC4(spi, rtc);
	return 0;
}