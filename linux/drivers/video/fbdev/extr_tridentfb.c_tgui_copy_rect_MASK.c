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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct tridentfb_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRAWFL ; 
 int OLDCMD ; 
 int /*<<< orphan*/  OLDDIM ; 
 int /*<<< orphan*/  OLDDST ; 
 int /*<<< orphan*/  OLDSRC ; 
 int ROP_S ; 
 int FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct tridentfb_par*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tridentfb_par*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct tridentfb_par *par,
			   u32 x1, u32 y1, u32 x2, u32 y2, u32 w, u32 h)
{
	int flags = 0;
	u16 x1_tmp, x2_tmp, y1_tmp, y2_tmp;

	if ((x1 < x2) && (y1 == y2)) {
		flags |= 0x0200;
		x1_tmp = x1 + w - 1;
		x2_tmp = x2 + w - 1;
	} else {
		x1_tmp = x1;
		x2_tmp = x2;
	}

	if (y1 < y2) {
		flags |= 0x0100;
		y1_tmp = y1 + h - 1;
		y2_tmp = y2 + h - 1;
	} else {
		y1_tmp = y1;
		y2_tmp = y2;
	}

	FUNC2(par, DRAWFL, 0x4 | flags);
	FUNC1(par, ROP_S, 0x2127);
	FUNC2(par, OLDSRC, FUNC0(x1_tmp, y1_tmp));
	FUNC2(par, OLDDST, FUNC0(x2_tmp, y2_tmp));
	FUNC2(par, OLDDIM, FUNC0(w - 1, h - 1));
	FUNC1(par, 1, OLDCMD);
}