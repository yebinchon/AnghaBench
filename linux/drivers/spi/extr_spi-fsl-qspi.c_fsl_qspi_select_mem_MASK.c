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
struct spi_device {unsigned long max_speed_hz; scalar_t__ chip_select; } ;
struct fsl_qspi {scalar_t__ selected; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct fsl_qspi*) ; 
 int FUNC2 (struct fsl_qspi*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsl_qspi*) ; 
 scalar_t__ FUNC4 (struct fsl_qspi*) ; 

__attribute__((used)) static void FUNC5(struct fsl_qspi *q, struct spi_device *spi)
{
	unsigned long rate = spi->max_speed_hz;
	int ret;

	if (q->selected == spi->chip_select)
		return;

	if (FUNC4(q))
		rate *= 4;

	FUNC1(q);

	ret = FUNC0(q->clk, rate);
	if (ret)
		return;

	ret = FUNC2(q);
	if (ret)
		return;

	q->selected = spi->chip_select;

	FUNC3(q);
}