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
struct rb4xx_spi {int /*<<< orphan*/  clk; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct rb4xx_spi* FUNC1 (struct platform_device*) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct rb4xx_spi *rbspi = FUNC1(pdev);

	FUNC0(rbspi->clk);

	return 0;
}