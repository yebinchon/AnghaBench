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
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  LCD_RASTER_TIMING_2_REG ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(int period, int transitions_per_int)
{
	u32 reg;

	/* Set the AC Bias Period and Number of Transisitons per Interrupt */
	reg = FUNC2(LCD_RASTER_TIMING_2_REG) & 0xFFF00000;
	reg |= FUNC0(period) |
		FUNC1(transitions_per_int);
	FUNC3(reg, LCD_RASTER_TIMING_2_REG);
}