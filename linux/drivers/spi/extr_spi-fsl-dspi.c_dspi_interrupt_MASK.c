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
typedef  int u32 ;
struct fsl_dspi {int waitflags; int /*<<< orphan*/  waitq; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  SPI_SR ; 
 int SPI_SR_EOQF ; 
 int SPI_SR_TCFQF ; 
 scalar_t__ FUNC0 (struct fsl_dspi*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct fsl_dspi *dspi = (struct fsl_dspi *)dev_id;
	u32 spi_sr;

	FUNC1(dspi->regmap, SPI_SR, &spi_sr);
	FUNC2(dspi->regmap, SPI_SR, spi_sr);

	if (!(spi_sr & (SPI_SR_EOQF | SPI_SR_TCFQF)))
		return IRQ_NONE;

	if (FUNC0(dspi) == 0) {
		dspi->waitflags = 1;
		FUNC3(&dspi->waitq);
	}

	return IRQ_HANDLED;
}