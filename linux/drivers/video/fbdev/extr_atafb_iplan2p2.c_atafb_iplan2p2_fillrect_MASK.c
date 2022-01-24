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
typedef  int u_long ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct fb_info {scalar_t__ screen_base; } ;

/* Variables and functions */
 int BPL ; 
 int /*<<< orphan*/  FUNC0 (int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int*) ; 
 int* FUNC2 (int*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*) ; 

void FUNC4(struct fb_info *info, u_long next_line, u32 color,
                             int sy, int sx, int height, int width)
{
	u32 *dest;
	int rows, i;
	u32 cval[4];

	dest = (u32 *)(info->screen_base + sy * next_line + (sx & ~15) / (8 / BPL));
	if (sx & 15) {
		u8 *dest8 = (u8 *)dest + 1;

		FUNC1(color, cval);

		for (i = height; i; i--) {
			FUNC3(dest8, cval);
			dest8 += next_line;
		}
		dest += BPL / 2;
		width -= 8;
	}

	FUNC0(color, cval);
	rows = width >> 4;
	if (rows) {
		u32 *d = dest;
		u32 off = next_line - rows * BPL * 2;
		for (i = height; i; i--) {
			d = FUNC2(d, rows, cval);
			d = (u32 *)((long)d + off);
		}
		dest += rows * BPL / 2;
		width &= 15;
	}

	if (width) {
		u8 *dest8 = (u8 *)dest;

		FUNC1(color, cval);

		for (i = height; i; i--) {
			FUNC3(dest8, cval);
			dest8 += next_line;
		}
	}
}