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

/* Variables and functions */
 int /*<<< orphan*/  LCD_CLK_MAIN_RESET ; 
 int /*<<< orphan*/  LCD_CLK_RESET_REG ; 
 int /*<<< orphan*/  LCD_DMA_CTRL_REG ; 
 int /*<<< orphan*/  LCD_INT_ENABLE_SET_REG ; 
 int /*<<< orphan*/  LCD_RASTER_CTRL_REG ; 
 scalar_t__ LCD_VERSION_2 ; 
 scalar_t__ lcd_revision ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void)
{
	/* DMA has to be disabled */
	FUNC0(0, LCD_DMA_CTRL_REG);
	FUNC0(0, LCD_RASTER_CTRL_REG);

	if (lcd_revision == LCD_VERSION_2) {
		FUNC0(0, LCD_INT_ENABLE_SET_REG);
		/* Write 1 to reset */
		FUNC0(LCD_CLK_MAIN_RESET, LCD_CLK_RESET_REG);
		FUNC0(0, LCD_CLK_RESET_REG);
	}
}