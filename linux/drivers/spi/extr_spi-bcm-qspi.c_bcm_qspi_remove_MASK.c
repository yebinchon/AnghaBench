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
struct platform_device {int dummy; } ;
struct bcm_qspi {int /*<<< orphan*/  master; int /*<<< orphan*/  dev_ids; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm_qspi*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct bcm_qspi* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct platform_device *pdev)
{
	struct bcm_qspi *qspi = FUNC3(pdev);

	FUNC0(qspi);
	FUNC1(qspi->clk);
	FUNC2(qspi->dev_ids);
	FUNC4(qspi->master);

	return 0;
}