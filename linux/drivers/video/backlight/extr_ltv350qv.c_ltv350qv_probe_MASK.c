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
struct ltv350qv {struct lcd_device* ld; void* buffer; int /*<<< orphan*/  power; struct spi_device* spi; } ;
struct lcd_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FB_BLANK_POWERDOWN ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct lcd_device*) ; 
 int FUNC1 (struct lcd_device*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct lcd_device* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,struct ltv350qv*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ltv350qv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ltv_ops ; 
 int /*<<< orphan*/  FUNC5 (struct spi_device*,struct ltv350qv*) ; 

__attribute__((used)) static int FUNC6(struct spi_device *spi)
{
	struct ltv350qv *lcd;
	struct lcd_device *ld;
	int ret;

	lcd = FUNC2(&spi->dev, sizeof(struct ltv350qv), GFP_KERNEL);
	if (!lcd)
		return -ENOMEM;

	lcd->spi = spi;
	lcd->power = FB_BLANK_POWERDOWN;
	lcd->buffer = FUNC2(&spi->dev, 8, GFP_KERNEL);
	if (!lcd->buffer)
		return -ENOMEM;

	ld = FUNC3(&spi->dev, "ltv350qv", &spi->dev, lcd,
					&ltv_ops);
	if (FUNC0(ld))
		return FUNC1(ld);

	lcd->ld = ld;

	ret = FUNC4(lcd, FB_BLANK_UNBLANK);
	if (ret)
		return ret;

	FUNC5(spi, lcd);

	return 0;
}