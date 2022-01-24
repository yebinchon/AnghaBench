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
struct geni_se {int dummy; } ;
struct spi_geni_master {int tx_wm; int oversampling; int /*<<< orphan*/  dev; scalar_t__ tx_fifo_depth; int /*<<< orphan*/  fifo_width_bits; struct geni_se se; } ;

/* Variables and functions */
 int ENXIO ; 
 unsigned int GENI_SE_SPI ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC3 (struct geni_se*) ; 
 scalar_t__ FUNC4 (struct geni_se*) ; 
 int /*<<< orphan*/  FUNC5 (struct geni_se*) ; 
 int /*<<< orphan*/  FUNC6 (struct geni_se*,int,scalar_t__) ; 
 unsigned int FUNC7 (struct geni_se*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct spi_geni_master *mas)
{
	struct geni_se *se = &mas->se;
	unsigned int proto, major, minor, ver;

	FUNC8(mas->dev);

	proto = FUNC7(se);
	if (proto != GENI_SE_SPI) {
		FUNC2(mas->dev, "Invalid proto %d\n", proto);
		FUNC9(mas->dev);
		return -ENXIO;
	}
	mas->tx_fifo_depth = FUNC4(se);

	/* Width of Tx and Rx FIFO is same */
	mas->fifo_width_bits = FUNC5(se);

	/*
	 * Hardware programming guide suggests to configure
	 * RX FIFO RFR level to fifo_depth-2.
	 */
	FUNC6(se, 0x0, mas->tx_fifo_depth - 2);
	/* Transmit an entire FIFO worth of data per IRQ */
	mas->tx_wm = 1;
	ver = FUNC3(se);
	major = FUNC0(ver);
	minor = FUNC1(ver);

	if (major == 1 && minor == 0)
		mas->oversampling = 2;
	else
		mas->oversampling = 1;

	FUNC9(mas->dev);
	return 0;
}