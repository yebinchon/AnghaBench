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
 scalar_t__ BUSY ; 
 scalar_t__ DEST_X ; 
 scalar_t__ DEST_Y ; 
 scalar_t__ SOURCE_X ; 
 scalar_t__ SOURCE_Y ; 
 scalar_t__ TC_FBEN ; 
 scalar_t__ TC_WEN ; 
 scalar_t__ WHEIGHT ; 
 scalar_t__ WMOVE ; 
 scalar_t__ WMRR ; 
 scalar_t__ WWIDTH ; 
 int fb_bitmask ; 
 scalar_t__ fb_regs ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC3(int x0, int y0, int x1, int y1, int w, int h, int rr)
{
	if (rr >= 0) {
		while (FUNC0(fb_regs + BUSY) & fb_bitmask)
			;
	}
	FUNC1(fb_regs + TC_FBEN, fb_bitmask);
	if (rr >= 0) {
		FUNC1(fb_regs + TC_WEN, fb_bitmask);
		FUNC1(fb_regs + WMRR, rr);
	}
	FUNC2(fb_regs + SOURCE_X, x0);
	FUNC2(fb_regs + SOURCE_Y, y0);
	FUNC2(fb_regs + DEST_X, x1);
	FUNC2(fb_regs + DEST_Y, y1);
	FUNC2(fb_regs + WWIDTH, w);
	FUNC2(fb_regs + WHEIGHT, h);
	FUNC1(fb_regs + WMOVE, fb_bitmask);
}