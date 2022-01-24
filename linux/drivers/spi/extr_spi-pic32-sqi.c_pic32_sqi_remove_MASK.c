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
struct pic32_sqi {int /*<<< orphan*/  sys_clk; int /*<<< orphan*/  base_clk; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct pic32_sqi*) ; 
 struct pic32_sqi* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pic32_sqi*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct pic32_sqi *sqi = FUNC2(pdev);

	/* release resources */
	FUNC1(sqi->irq, sqi);
	FUNC3(sqi);

	/* disable clk */
	FUNC0(sqi->base_clk);
	FUNC0(sqi->sys_clk);

	return 0;
}