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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct a21_wdt_drv {int /*<<< orphan*/ * gpios; } ;

/* Variables and functions */
 size_t GPIO_WD_ENAB ; 
 struct a21_wdt_drv* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct platform_device *pdev)
{
	struct a21_wdt_drv *drv = FUNC0(&pdev->dev);

	FUNC1(drv->gpios[GPIO_WD_ENAB], 0);
}