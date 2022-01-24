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
struct xtfpga_spi {scalar_t__ data_sz; } ;
struct spi_device {int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct xtfpga_spi* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct spi_device *spi, int is_on)
{
	struct xtfpga_spi *xspi = FUNC1(spi->master);

	FUNC0(xspi->data_sz != 0);
	xspi->data_sz = 0;
}