#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int bits_per_pixel; } ;
struct TYPE_4__ {TYPE_1__ var; } ;
struct stifb_info {TYPE_2__ info; } ;

/* Variables and functions */
#define  DISABLE 129 
#define  ENABLE 128 
 scalar_t__ FUNC0 (struct stifb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct stifb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct stifb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct stifb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct stifb_info*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct stifb_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct stifb_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct stifb_info*,unsigned int) ; 

__attribute__((used)) static void 
FUNC8(struct stifb_info *fb, int enable)
{
	unsigned int controlPlaneReg;

	FUNC1(fb);

	if (FUNC0(fb))
		if (fb->info.var.bits_per_pixel == 32)
			controlPlaneReg = 0x04000F00;
		else
			controlPlaneReg = 0x00000F00;   /* 0x00000800 should be enough, but lets clear all 4 bits */
	else
		controlPlaneReg = 0x00000F00; /* 0x00000100 should be enough, but lets clear all 4 bits */

	switch (enable) {
	case ENABLE:
		/* clear screen */
		if (FUNC0(fb))
			FUNC5(fb);
		else
			FUNC6(fb);

		/* Paint attribute planes for default case.
		 * On Hyperdrive, this means all windows using overlay cmap 0. */
		FUNC7(fb, controlPlaneReg);

		/* clear overlay planes */
	        FUNC4(fb, 0xff, 255);

		/**************************************************
		 ** Also need to counteract ITE settings 
		 **************************************************/
		FUNC3(fb);
		break;

	case DISABLE:
		/* clear screen */
		if (FUNC0(fb))
			FUNC5(fb);
		else
			FUNC6(fb);
		FUNC7(fb, controlPlaneReg);
		FUNC4(fb, 0xff, 0);
		break;

	case -1:	/* RESET */
		FUNC3(fb);
		FUNC7(fb, controlPlaneReg);
		break;
    	}
	
	FUNC2(fb);
}