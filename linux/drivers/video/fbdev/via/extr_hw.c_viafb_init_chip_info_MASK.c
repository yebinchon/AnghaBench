#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* lvds_setting_info; TYPE_2__* lvds_setting_info2; } ;
struct TYPE_5__ {int /*<<< orphan*/  lcd_mode; int /*<<< orphan*/  display_method; } ;
struct TYPE_4__ {int /*<<< orphan*/  lcd_mode; int /*<<< orphan*/  display_method; } ;

/* Variables and functions */
 int /*<<< orphan*/  clock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  viafb_lcd_dsp_method ; 
 int /*<<< orphan*/  viafb_lcd_mode ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_3__* viaparinfo ; 

void FUNC5(int chip_type)
{
	FUNC3(&clock, chip_type);
	FUNC0(chip_type);
	FUNC2();
	FUNC1();

	/*Set IGA path for each device */
	FUNC4();

	viaparinfo->lvds_setting_info->display_method = viafb_lcd_dsp_method;
	viaparinfo->lvds_setting_info->lcd_mode = viafb_lcd_mode;
	viaparinfo->lvds_setting_info2->display_method =
		viaparinfo->lvds_setting_info->display_method;
	viaparinfo->lvds_setting_info2->lcd_mode =
		viaparinfo->lvds_setting_info->lcd_mode;
}