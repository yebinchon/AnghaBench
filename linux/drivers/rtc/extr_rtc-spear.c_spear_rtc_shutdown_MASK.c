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
struct spear_rtc_config {int /*<<< orphan*/  clk; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct spear_rtc_config* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct spear_rtc_config*) ; 

__attribute__((used)) static void FUNC3(struct platform_device *pdev)
{
	struct spear_rtc_config *config = FUNC1(pdev);

	FUNC2(config);
	FUNC0(config->clk);
}