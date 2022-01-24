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
typedef  int u16 ;
struct vc_data {unsigned int vc_size_row; unsigned long vc_origin; unsigned long vc_scr_end; int vc_hi_font_mask; } ;
struct uni_screen {int /*<<< orphan*/ ** lines; } ;
typedef  int /*<<< orphan*/  char32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct uni_screen* FUNC1 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct vc_data*,int,int) ; 

void FUNC6(struct vc_data *vc, void *dest, int viewed,
			 unsigned int row, unsigned int col, unsigned int nr)
{
	struct uni_screen *uniscr = FUNC1(vc);
	int offset = row * vc->vc_size_row + col * 2;
	unsigned long pos;

	FUNC0(!uniscr);

	pos = (unsigned long)FUNC5(vc, offset, viewed);
	if (pos >= vc->vc_origin && pos < vc->vc_scr_end) {
		/*
		 * Desired position falls in the main screen buffer.
		 * However the actual row/col might be different if
		 * scrollback is active.
		 */
		row = (pos - vc->vc_origin) / vc->vc_size_row;
		col = ((pos - vc->vc_origin) % vc->vc_size_row) / 2;
		FUNC3(dest, &uniscr->lines[row][col], nr * sizeof(char32_t));
	} else {
		/*
		 * Scrollback is active. For now let's simply backtranslate
		 * the screen glyphs until the unicode screen buffer does
		 * synchronize with console display drivers for a scrollback
		 * buffer of its own.
		 */
		u16 *p = (u16 *)pos;
		int mask = vc->vc_hi_font_mask | 0xff;
		char32_t *uni_buf = dest;
		while (nr--) {
			u16 glyph = FUNC4(p++) & mask;
			*uni_buf++ = FUNC2(vc, glyph, true);
		}
	}
}