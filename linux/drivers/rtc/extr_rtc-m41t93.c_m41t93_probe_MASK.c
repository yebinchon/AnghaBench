#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct spi_device {int bits_per_word; int /*<<< orphan*/  dev; } ;
struct rtc_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__ driver; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct rtc_device*) ; 
 int /*<<< orphan*/  M41T93_REG_WDAY ; 
 int FUNC1 (struct rtc_device*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct rtc_device* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__ m41t93_driver ; 
 int /*<<< orphan*/  m41t93_rtc_ops ; 
 int /*<<< orphan*/  FUNC4 (struct spi_device*,struct rtc_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_device*) ; 
 int FUNC6 (struct spi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct spi_device *spi)
{
	struct rtc_device *rtc;
	int res;

	spi->bits_per_word = 8;
	FUNC5(spi);

	res = FUNC6(spi, M41T93_REG_WDAY);
	if (res < 0 || (res & 0xf8) != 0) {
		FUNC2(&spi->dev, "not found 0x%x.\n", res);
		return -ENODEV;
	}

	rtc = FUNC3(&spi->dev, m41t93_driver.driver.name,
					&m41t93_rtc_ops, THIS_MODULE);
	if (FUNC0(rtc))
		return FUNC1(rtc);

	FUNC4(spi, rtc);

	return 0;
}