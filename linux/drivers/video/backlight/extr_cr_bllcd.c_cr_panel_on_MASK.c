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
typedef  int u32 ;

/* Variables and functions */
 int CRVML_LVDS_ON ; 
 int CRVML_PANEL_ON ; 
 int CRVML_PANEL_PORT ; 
 int HZ ; 
 int gpio_bar ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(void)
{
	u32 addr = gpio_bar + CRVML_PANEL_PORT;
	u32 cur = FUNC0(addr);

	if (!(cur & CRVML_PANEL_ON)) {
		/* Make sure LVDS controller is down. */
		if (cur & 0x00000001) {
			cur &= ~CRVML_LVDS_ON;
			FUNC1(cur, addr);
		}
		/* Power up Panel */
		FUNC2(HZ / 10);
		cur |= CRVML_PANEL_ON;
		FUNC1(cur, addr);
	}

	/* Power up LVDS controller */

	if (!(cur & CRVML_LVDS_ON)) {
		FUNC2(HZ / 10);
		FUNC1(cur | CRVML_LVDS_ON, addr);
	}
}