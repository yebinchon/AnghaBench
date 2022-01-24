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
struct vc_data {int vc_hi_font_mask; int vc_complement_mask; int vc_s_complement_mask; int vc_screenbuf_size; unsigned short vc_video_erase_char; int vc_attr; scalar_t__ vc_can_do_color; scalar_t__ vc_origin; } ;

/* Variables and functions */
 unsigned short FUNC0 (unsigned short*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short,unsigned short*) ; 

__attribute__((used)) static void FUNC2(struct vc_data *vc, bool set)
{
	if (!set) {
		vc->vc_hi_font_mask = 0;
		if (vc->vc_can_do_color) {
			vc->vc_complement_mask >>= 1;
			vc->vc_s_complement_mask >>= 1;
		}
			
		/* ++Edmund: reorder the attribute bits */
		if (vc->vc_can_do_color) {
			unsigned short *cp =
			    (unsigned short *) vc->vc_origin;
			int count = vc->vc_screenbuf_size / 2;
			unsigned short c;
			for (; count > 0; count--, cp++) {
				c = FUNC0(cp);
				FUNC1(((c & 0xfe00) >> 1) |
					   (c & 0xff), cp);
			}
			c = vc->vc_video_erase_char;
			vc->vc_video_erase_char =
			    ((c & 0xfe00) >> 1) | (c & 0xff);
			vc->vc_attr >>= 1;
		}
	} else {
		vc->vc_hi_font_mask = 0x100;
		if (vc->vc_can_do_color) {
			vc->vc_complement_mask <<= 1;
			vc->vc_s_complement_mask <<= 1;
		}
			
		/* ++Edmund: reorder the attribute bits */
		{
			unsigned short *cp =
			    (unsigned short *) vc->vc_origin;
			int count = vc->vc_screenbuf_size / 2;
			unsigned short c;
			for (; count > 0; count--, cp++) {
				unsigned short newc;
				c = FUNC0(cp);
				if (vc->vc_can_do_color)
					newc =
					    ((c & 0xff00) << 1) | (c &
								   0xff);
				else
					newc = c & ~0x100;
				FUNC1(newc, cp);
			}
			c = vc->vc_video_erase_char;
			if (vc->vc_can_do_color) {
				vc->vc_video_erase_char =
				    ((c & 0xff00) << 1) | (c & 0xff);
				vc->vc_attr <<= 1;
			} else
				vc->vc_video_erase_char = c & ~0x100;
		}
	}
}