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
struct TYPE_2__ {int /*<<< orphan*/  lcd_ck; int /*<<< orphan*/  fbdev; int /*<<< orphan*/  ext_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_LCDC_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__ lcdc ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(void)
{
	if (!lcdc.ext_mode)
		FUNC4();
	FUNC2();
	FUNC5();
	FUNC3(OMAP_LCDC_IRQ, lcdc.fbdev);
	FUNC0(lcdc.lcd_ck);
	FUNC1(lcdc.lcd_ck);
}