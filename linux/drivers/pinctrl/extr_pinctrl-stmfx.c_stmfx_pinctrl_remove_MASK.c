#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stmfx {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int STMFX_FUNC_ALTGPIO_HIGH ; 
 int STMFX_FUNC_ALTGPIO_LOW ; 
 int STMFX_FUNC_GPIO ; 
 struct stmfx* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct stmfx*,int) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct stmfx *stmfx = FUNC0(pdev->dev.parent);

	return FUNC1(stmfx,
				      STMFX_FUNC_GPIO |
				      STMFX_FUNC_ALTGPIO_LOW |
				      STMFX_FUNC_ALTGPIO_HIGH);
}