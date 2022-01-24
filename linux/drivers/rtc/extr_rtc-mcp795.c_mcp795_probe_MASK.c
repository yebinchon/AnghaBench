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
struct spi_device {int bits_per_word; scalar_t__ irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  mode; } ;
struct rtc_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC0 (struct rtc_device*) ; 
 int /*<<< orphan*/  MCP795_24_BIT ; 
 int /*<<< orphan*/  MCP795_ALM0IF_BIT ; 
 int MCP795_REG_ALM0_DAY ; 
 int FUNC1 (struct rtc_device*) ; 
 int /*<<< orphan*/  SPI_MODE_0 ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct spi_device*) ; 
 struct rtc_device* FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcp795_irq ; 
 int /*<<< orphan*/  mcp795_rtc_ops ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct spi_device*,struct rtc_device*) ; 
 int FUNC11 (struct spi_device*) ; 

__attribute__((used)) static int FUNC12(struct spi_device *spi)
{
	struct rtc_device *rtc;
	int ret;

	spi->mode = SPI_MODE_0;
	spi->bits_per_word = 8;
	ret = FUNC11(spi);
	if (ret) {
		FUNC3(&spi->dev, "Unable to setup SPI\n");
		return ret;
	}

	/* Start the oscillator but don't set the value of EXTOSC bit */
	FUNC9(&spi->dev, NULL);
	/* Clear the 12 hour mode flag*/
	FUNC8(&spi->dev, 0x03, MCP795_24_BIT, 0);

	rtc = FUNC7(&spi->dev, "rtc-mcp795",
					&mcp795_rtc_ops, THIS_MODULE);
	if (FUNC0(rtc))
		return FUNC1(rtc);

	FUNC10(spi, rtc);

	if (spi->irq > 0) {
		FUNC2(&spi->dev, "Alarm support enabled\n");

		/* Clear any pending alarm (ALM0IF bit) before requesting
		 * the interrupt.
		 */
		FUNC8(&spi->dev, MCP795_REG_ALM0_DAY,
					MCP795_ALM0IF_BIT, 0);
		ret = FUNC6(&spi->dev, spi->irq, NULL,
				mcp795_irq, IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
				FUNC4(&rtc->dev), spi);
		if (ret)
			FUNC3(&spi->dev, "Failed to request IRQ: %d: %d\n",
						spi->irq, ret);
		else
			FUNC5(&spi->dev, true);
	}
	return 0;
}