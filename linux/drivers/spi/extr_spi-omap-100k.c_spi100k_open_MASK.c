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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SPI_SETUP1_INT_READ_ENABLE ; 
 int SPI_SETUP1_INT_WRITE_ENABLE ; 
 scalar_t__ SPI_SETUP2 ; 
 int SPI_SETUP2_ACTIVE_EDGE_FALLING ; 
 int SPI_SETUP2_LEVEL_TRIGGER ; 
 int SPI_SETUP2_NEGATIVE_LEVEL ; 
 struct omap1_spi100k* FUNC1 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct spi_master *master)
{
	/* get control of SPI */
	struct omap1_spi100k *spi100k = FUNC1(master);

	FUNC2(SPI_SETUP1_INT_READ_ENABLE |
	       SPI_SETUP1_INT_WRITE_ENABLE |
	       FUNC0(0), spi100k->base + SPI_SETUP1);

	/* configure clock and interrupts */
	FUNC2(SPI_SETUP2_ACTIVE_EDGE_FALLING |
	       SPI_SETUP2_NEGATIVE_LEVEL |
	       SPI_SETUP2_LEVEL_TRIGGER, spi100k->base + SPI_SETUP2);
}