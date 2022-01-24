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
struct spi_controller {int dummy; } ;
struct platform_device {int dummy; } ;
struct atmel_qspi {int /*<<< orphan*/  pclk; int /*<<< orphan*/  qspick; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ QSPI_CR ; 
 int /*<<< orphan*/  QSPI_CR_QSPIDIS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct spi_controller* FUNC1 (struct platform_device*) ; 
 struct atmel_qspi* FUNC2 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct spi_controller *ctrl = FUNC1(pdev);
	struct atmel_qspi *aq = FUNC2(ctrl);

	FUNC3(ctrl);
	FUNC4(QSPI_CR_QSPIDIS, aq->regs + QSPI_CR);
	FUNC0(aq->qspick);
	FUNC0(aq->pclk);
	return 0;
}