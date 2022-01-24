#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ lvds_chip_name; int /*<<< orphan*/  output_interface; } ;
struct TYPE_9__ {int /*<<< orphan*/  iga_path; } ;
struct TYPE_8__ {TYPE_1__* chip_info; TYPE_3__* lvds_setting_info; TYPE_3__* lvds_setting_info2; } ;
struct TYPE_7__ {scalar_t__ gfx_chip_name; TYPE_4__ lvds_chip_info; TYPE_4__ lvds_chip_info2; } ;

/* Variables and functions */
 int BIT3 ; 
 int /*<<< orphan*/  CR6A ; 
 int /*<<< orphan*/  CR6B ; 
 int /*<<< orphan*/  CR91 ; 
 scalar_t__ INTEGRATED_LVDS ; 
 int /*<<< orphan*/  SR1E ; 
 int /*<<< orphan*/  SR3D ; 
 scalar_t__ UNICHROME_CLE266 ; 
 scalar_t__ UNICHROME_CX700 ; 
 int /*<<< orphan*/  VIACR ; 
 int /*<<< orphan*/  VIASR ; 
 scalar_t__ VT1636_LVDS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ viafb_LCD2_ON ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 TYPE_2__* viaparinfo ; 

void FUNC5(void)
{
	FUNC4(CR6B, VIACR, 0x00, BIT3);
	FUNC4(CR6A, VIACR, 0x08, BIT3);
	FUNC2(viaparinfo->lvds_setting_info->iga_path,
		viaparinfo->chip_info->lvds_chip_info.output_interface);
	if (viafb_LCD2_ON)
		FUNC2(viaparinfo->lvds_setting_info2->iga_path,
			viaparinfo->chip_info->
			lvds_chip_info2.output_interface);

	if (viaparinfo->chip_info->gfx_chip_name == UNICHROME_CLE266) {
		/* DI1 pad on */
		FUNC4(SR1E, VIASR, 0x30, 0x30);
		FUNC1();
	} else if (viaparinfo->chip_info->gfx_chip_name == UNICHROME_CX700) {
		if (viafb_LCD2_ON && (INTEGRATED_LVDS ==
			viaparinfo->chip_info->lvds_chip_info2.lvds_chip_name))
			FUNC0(viaparinfo->lvds_setting_info2, \
				&viaparinfo->chip_info->lvds_chip_info2);
		if (INTEGRATED_LVDS ==
			viaparinfo->chip_info->lvds_chip_info.lvds_chip_name)
			FUNC0(viaparinfo->lvds_setting_info,
				&viaparinfo->chip_info->lvds_chip_info);
		if (VT1636_LVDS == viaparinfo->chip_info->
			lvds_chip_info.lvds_chip_name)
			FUNC3(viaparinfo->
			lvds_setting_info, &viaparinfo->chip_info->
			lvds_chip_info);
	} else if (VT1636_LVDS ==
	viaparinfo->chip_info->lvds_chip_info.lvds_chip_name) {
		FUNC3(viaparinfo->lvds_setting_info,
				   &viaparinfo->chip_info->lvds_chip_info);
	} else {
		/* Backlight on            */
		FUNC4(SR3D, VIASR, 0x20, 0x20);
		/* 24 bit DI data paht on  */
		FUNC4(CR91, VIACR, 0x00, 0x80);
		/* LCD enabled             */
		FUNC4(CR6A, VIACR, 0x48, 0x48);
	}
}