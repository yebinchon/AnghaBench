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
typedef  int /*<<< orphan*/  uint64_t ;
struct spi_device {unsigned long max_speed_hz; int chip_select; } ;
struct nxp_fspi {int selected; int /*<<< orphan*/  clk; int /*<<< orphan*/  dev; scalar_t__ iobase; int /*<<< orphan*/  memmap_phy_size; } ;

/* Variables and functions */
 scalar_t__ FSPI_FLSHA1CR0 ; 
 scalar_t__ FSPI_FLSHA2CR0 ; 
 scalar_t__ FSPI_FLSHB1CR0 ; 
 scalar_t__ FSPI_FLSHB2CR0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nxp_fspi*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct nxp_fspi*) ; 
 int FUNC5 (struct nxp_fspi*) ; 

__attribute__((used)) static void FUNC6(struct nxp_fspi *f, struct spi_device *spi)
{
	unsigned long rate = spi->max_speed_hz;
	int ret;
	uint64_t size_kb;

	/*
	 * Return, if previously selected slave device is same as current
	 * requested slave device.
	 */
	if (f->selected == spi->chip_select)
		return;

	/* Reset FLSHxxCR0 registers */
	FUNC3(f, 0, f->iobase + FSPI_FLSHA1CR0);
	FUNC3(f, 0, f->iobase + FSPI_FLSHA2CR0);
	FUNC3(f, 0, f->iobase + FSPI_FLSHB1CR0);
	FUNC3(f, 0, f->iobase + FSPI_FLSHB2CR0);

	/* Assign controller memory mapped space as size, KBytes, of flash. */
	size_kb = FUNC0(f->memmap_phy_size);

	FUNC3(f, size_kb, f->iobase + FSPI_FLSHA1CR0 +
		    4 * spi->chip_select);

	FUNC2(f->dev, "Slave device [CS:%x] selected\n", spi->chip_select);

	FUNC4(f);

	ret = FUNC1(f->clk, rate);
	if (ret)
		return;

	ret = FUNC5(f);
	if (ret)
		return;

	f->selected = spi->chip_select;
}