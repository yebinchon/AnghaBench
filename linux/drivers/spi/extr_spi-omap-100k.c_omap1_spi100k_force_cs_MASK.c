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
struct omap1_spi100k {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ SPI_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct omap1_spi100k *spi100k, int enable)
{
	if (enable)
		FUNC0(0x05fc, spi100k->base + SPI_CTRL);
	else
		FUNC0(0x05fd, spi100k->base + SPI_CTRL);
}