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
typedef  int u8 ;
struct fb_info {struct aafb_par* par; } ;
struct TYPE_2__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  data; scalar_t__ bg_color; scalar_t__ fg_color; int /*<<< orphan*/  dy; int /*<<< orphan*/  dx; } ;
struct fb_cursor {int set; scalar_t__ enable; TYPE_1__ image; int /*<<< orphan*/  rop; int /*<<< orphan*/  mask; } ;
struct aafb_par {int /*<<< orphan*/  bt431; int /*<<< orphan*/  bt455; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT431_CURSOR_SIZE ; 
 int EINVAL ; 
 int FB_CUR_SETCMAP ; 
 int FB_CUR_SETIMAGE ; 
 int FB_CUR_SETPOS ; 
 int FB_CUR_SETSHAPE ; 
 int FB_CUR_SETSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct fb_info *info, struct fb_cursor *cursor)
{
	struct aafb_par *par = info->par;

	if (cursor->image.height > BT431_CURSOR_SIZE ||
	    cursor->image.width > BT431_CURSOR_SIZE) {
		FUNC1(par->bt431);
		return -EINVAL;
	}

	if (!cursor->enable)
		FUNC1(par->bt431);

	if (cursor->set & FB_CUR_SETPOS)
		FUNC2(par->bt431,
				      cursor->image.dx, cursor->image.dy);
	if (cursor->set & FB_CUR_SETCMAP) {
		u8 fg = cursor->image.fg_color ? 0xf : 0x0;
		u8 bg = cursor->image.bg_color ? 0xf : 0x0;

		FUNC4(par->bt455, 8, bg);
		FUNC5(par->bt455, bg);
		FUNC6(par->bt455, fg);
	}
	if (cursor->set & (FB_CUR_SETSIZE | FB_CUR_SETSHAPE | FB_CUR_SETIMAGE))
		FUNC3(par->bt431,
				 cursor->image.data, cursor->mask, cursor->rop,
				 cursor->image.width, cursor->image.height);

	if (cursor->enable)
		FUNC0(par->bt431);

	return 0;
}