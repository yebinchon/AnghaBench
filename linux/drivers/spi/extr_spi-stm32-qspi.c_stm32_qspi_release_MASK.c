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
struct stm32_qspi {int /*<<< orphan*/  ctrl; int /*<<< orphan*/  clk; int /*<<< orphan*/  lock; scalar_t__ io_base; } ;

/* Variables and functions */
 scalar_t__ QSPI_CR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct stm32_qspi*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct stm32_qspi *qspi)
{
	/* disable qspi */
	FUNC4(0, qspi->io_base + QSPI_CR);
	FUNC3(qspi);
	FUNC1(&qspi->lock);
	FUNC0(qspi->clk);
	FUNC2(qspi->ctrl);
}