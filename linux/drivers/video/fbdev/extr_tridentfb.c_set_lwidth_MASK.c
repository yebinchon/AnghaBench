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
struct tridentfb_par {scalar_t__ chip_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  AddColReg ; 
 scalar_t__ CYBER9320 ; 
 scalar_t__ TGUI9440 ; 
 int /*<<< orphan*/  VGA_CRTC_OFFSET ; 
 int FUNC0 (struct tridentfb_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tridentfb_par*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct tridentfb_par *par, int width)
{
	FUNC1(par, VGA_CRTC_OFFSET, width & 0xFF);
	/* chips older than TGUI9660 have only 1 width bit in AddColReg */
	/* touching the other one breaks I2C/DDC */
	if (par->chip_id == TGUI9440 || par->chip_id == CYBER9320)
		FUNC1(par, AddColReg,
		     (FUNC0(par, AddColReg) & 0xEF) | ((width & 0x100) >> 4));
	else
		FUNC1(par, AddColReg,
		     (FUNC0(par, AddColReg) & 0xCF) | ((width & 0x300) >> 4));
}