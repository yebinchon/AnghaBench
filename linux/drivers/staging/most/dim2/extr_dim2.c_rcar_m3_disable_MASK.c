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
struct dim2_hdm {scalar_t__ io_base; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct dim2_hdm* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct platform_device *pdev)
{
	struct dim2_hdm *dev = FUNC1(pdev);

	FUNC0(dev->clk);

	/* disable PLLs and LVDS drivers */
	FUNC2(0x0, dev->io_base + 0x600);
}