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
 int /*<<< orphan*/  LCD_RASTER_TIMING_1_REG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(int back_porch, int pulse_width,
		int front_porch)
{
	u32 reg;

	reg = FUNC0(LCD_RASTER_TIMING_1_REG) & 0x3ff;
	reg |= ((back_porch & 0xff) << 24)
	    | ((front_porch & 0xff) << 16)
	    | (((pulse_width-1) & 0x3f) << 10);
	FUNC1(reg, LCD_RASTER_TIMING_1_REG);
}