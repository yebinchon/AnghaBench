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
struct spi_device {int mode; int /*<<< orphan*/  chip_select; int /*<<< orphan*/  master; } ;
struct mcfqspi {int dummy; } ;

/* Variables and functions */
 int SPI_CS_HIGH ; 
 int /*<<< orphan*/  FUNC0 (struct mcfqspi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mcfqspi*,int /*<<< orphan*/ ,int) ; 
 struct mcfqspi* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct spi_device *spi, bool enable)
{
	struct mcfqspi *mcfqspi = FUNC2(spi->master);
	bool cs_high = spi->mode & SPI_CS_HIGH;

	if (enable)
		FUNC1(mcfqspi, spi->chip_select, cs_high);
	else
		FUNC0(mcfqspi, spi->chip_select, cs_high);
}