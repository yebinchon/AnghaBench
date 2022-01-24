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
struct TYPE_2__ {int sync; } ;
struct fb_info {TYPE_1__ var; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMCTRL ; 
 int /*<<< orphan*/  DSCTRL ; 
 unsigned long DSCTRL_BLNK_POL ; 
 unsigned long DSCTRL_HS_POL ; 
 int DSCTRL_SYNCGEN_EN ; 
 unsigned long DSCTRL_VS_POL ; 
 int FB_SYNC_HOR_HIGH_ACT ; 
 int FB_SYNC_VERT_HIGH_ACT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct fb_info *fbi)
{
	unsigned long dsctrl = 0;

	dsctrl = DSCTRL_BLNK_POL;
	if (fbi->var.sync & FB_SYNC_HOR_HIGH_ACT)
		dsctrl |= DSCTRL_HS_POL;
	if (fbi->var.sync & FB_SYNC_VERT_HIGH_ACT)
		dsctrl |= DSCTRL_VS_POL;
	FUNC1(dsctrl, DSCTRL);
	FUNC1(0xd0303010, DMCTRL);
	FUNC1((FUNC0(DSCTRL) | DSCTRL_SYNCGEN_EN), DSCTRL);
}