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
typedef  int u_char ;
typedef  int u16 ;
struct vc_data {int vc_hi_font_mask; scalar_t__ vc_origin; } ;

/* Variables and functions */
 int FUNC0 (struct vc_data*,int,int) ; 
 int FUNC1 (int*) ; 
 int* FUNC2 (struct vc_data*,int,int) ; 

__attribute__((used)) static u16 FUNC3(struct vc_data *vc, u16 *pos, u_char *attribs)
{
	u16 ch = ' ';

	if (vc && pos) {
		u16 w;
		u16 c;

		pos = FUNC2(vc, pos - (u16 *)vc->vc_origin, 1);
		w = FUNC1(pos);
		c = w & 0xff;

		if (w & vc->vc_hi_font_mask) {
			w &= ~vc->vc_hi_font_mask;
			c |= 0x100;
		}

		ch = FUNC0(vc, c, 1);
		*attribs = (w & 0xff00) >> 8;
	}
	return ch;
}