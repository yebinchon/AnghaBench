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
struct spi_master {int dummy; } ;
struct omap1_spi100k {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ SPI_SETUP1 ; 
 unsigned int SPI_SETUP1_CLOCK_ENABLE ; 
 unsigned int FUNC0 (scalar_t__) ; 
 struct omap1_spi100k* FUNC1 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct spi_master *master)
{
	unsigned int val;
	struct omap1_spi100k *spi100k = FUNC1(master);

	/* enable SPI */
	val = FUNC0(spi100k->base + SPI_SETUP1);
	val |= SPI_SETUP1_CLOCK_ENABLE;
	FUNC2(val, spi100k->base + SPI_SETUP1);
}