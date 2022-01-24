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
struct zynq_qspi {int /*<<< orphan*/  pclk; int /*<<< orphan*/  refclk; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZYNQ_QSPI_ENABLE_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct zynq_qspi* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct zynq_qspi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct zynq_qspi *xqspi = FUNC1(pdev);

	FUNC2(xqspi, ZYNQ_QSPI_ENABLE_OFFSET, 0);

	FUNC0(xqspi->refclk);
	FUNC0(xqspi->pclk);

	return 0;
}