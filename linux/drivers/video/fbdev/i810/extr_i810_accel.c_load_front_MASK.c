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
struct TYPE_2__ {int offset; } ;
struct i810fb_par {int pitch; TYPE_1__ fb; } ;
struct fb_info {struct i810fb_par* par; } ;

/* Variables and functions */
 int FLUSH ; 
 int FRONT_BUFFER ; 
 scalar_t__ IRING_PAD ; 
 int NOP ; 
 int PARSER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct fb_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct i810fb_par*) ; 

__attribute__((used)) static inline void FUNC3(int offset, struct fb_info *info)
{
	struct i810fb_par *par = info->par;

	if (FUNC1(info, 8 + IRING_PAD)) return;

	FUNC0(PARSER | FLUSH);
	FUNC0(NOP);

	FUNC2(par);

	if (FUNC1(info, 8 + IRING_PAD)) return;

	FUNC0(PARSER | FRONT_BUFFER | ((par->pitch >> 3) << 8));
	FUNC0((par->fb.offset << 12) + offset);

	FUNC2(par);
}