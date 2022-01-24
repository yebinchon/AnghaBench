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
typedef  enum da8xx_frame_complete { ____Placeholder_da8xx_frame_complete } da8xx_frame_complete ;

/* Variables and functions */
 int DA8XX_FRAME_WAIT ; 
 int /*<<< orphan*/  LCD_RASTER_CTRL_REG ; 
 int LCD_RASTER_ENABLE ; 
 scalar_t__ LCD_VERSION_2 ; 
 scalar_t__ frame_done_flag ; 
 int /*<<< orphan*/  frame_done_wq ; 
 scalar_t__ lcd_revision ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(enum da8xx_frame_complete wait_for_frame_done)
{
	u32 reg;
	int ret;

	reg = FUNC0(LCD_RASTER_CTRL_REG);
	if (reg & LCD_RASTER_ENABLE)
		FUNC1(reg & ~LCD_RASTER_ENABLE, LCD_RASTER_CTRL_REG);
	else
		/* return if already disabled */
		return;

	if ((wait_for_frame_done == DA8XX_FRAME_WAIT) &&
			(lcd_revision == LCD_VERSION_2)) {
		frame_done_flag = 0;
		ret = FUNC4(frame_done_wq,
				frame_done_flag != 0,
				FUNC2(50));
		if (ret == 0)
			FUNC3("LCD Controller timed out\n");
	}
}