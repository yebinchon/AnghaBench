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
typedef  int u16 ;
struct spi_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  mode; int /*<<< orphan*/  max_speed_hz; } ;
struct lcd_device {int dummy; } ;
struct ili922x {struct lcd_device* ld; int /*<<< orphan*/  power; struct spi_device* spi; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FB_BLANK_POWERDOWN ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int ILITEK_DEVICE_ID ; 
 int ILITEK_DEVICE_ID_MASK ; 
 scalar_t__ FUNC0 (struct lcd_device*) ; 
 int FUNC1 (struct lcd_device*) ; 
 int /*<<< orphan*/  REG_DRIVER_CODE_READ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ili922x* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct lcd_device* FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,struct ili922x*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct ili922x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ili922x_ops ; 
 int FUNC9 (struct spi_device*,int /*<<< orphan*/ ,int*) ; 
 int FUNC10 (struct spi_device*,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct spi_device*,struct ili922x*) ; 

__attribute__((used)) static int FUNC12(struct spi_device *spi)
{
	struct ili922x *ili;
	struct lcd_device *lcd;
	int ret;
	u16 reg = 0;

	ili = FUNC5(&spi->dev, sizeof(*ili), GFP_KERNEL);
	if (!ili)
		return -ENOMEM;

	ili->spi = spi;
	FUNC11(spi, ili);

	/* check if the device is connected */
	ret = FUNC9(spi, REG_DRIVER_CODE_READ, &reg);
	if (ret || ((reg & ILITEK_DEVICE_ID_MASK) != ILITEK_DEVICE_ID)) {
		FUNC3(&spi->dev,
			"no LCD found: Chip ID 0x%x, ret %d\n",
			reg, ret);
		return -ENODEV;
	}

	FUNC4(&spi->dev, "ILI%x found, SPI freq %d, mode %d\n",
		 reg, spi->max_speed_hz, spi->mode);

	ret = FUNC10(spi, &reg);
	if (ret) {
		FUNC3(&spi->dev, "reading RS failed...\n");
		return ret;
	}

	FUNC2(&spi->dev, "status: 0x%x\n", reg);

	FUNC7(spi);

	ili->power = FB_BLANK_POWERDOWN;

	lcd = FUNC6(&spi->dev, "ili922xlcd", &spi->dev, ili,
					&ili922x_ops);
	if (FUNC0(lcd)) {
		FUNC3(&spi->dev, "cannot register LCD\n");
		return FUNC1(lcd);
	}

	ili->ld = lcd;
	FUNC11(spi, ili);

	FUNC8(ili, FB_BLANK_UNBLANK);

	return 0;
}