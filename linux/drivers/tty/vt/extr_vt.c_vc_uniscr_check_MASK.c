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
struct vc_data {int vc_cols; int vc_rows; int vc_hi_font_mask; struct uni_screen* vc_uni_screen; scalar_t__ vc_origin; int /*<<< orphan*/  vc_utf; } ;
struct uni_screen {int /*<<< orphan*/ ** lines; } ;
typedef  int /*<<< orphan*/  char32_t ;

/* Variables and functions */
 int ENODATA ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  NO_VC_UNI_SCREEN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct uni_screen* FUNC4 (int,int) ; 

int FUNC5(struct vc_data *vc)
{
	struct uni_screen *uniscr;
	unsigned short *p;
	int x, y, mask;

	if (FUNC1(NO_VC_UNI_SCREEN))
		return -EOPNOTSUPP;

	FUNC0();

	if (!vc->vc_utf)
		return -ENODATA;

	if (vc->vc_uni_screen)
		return 0;

	uniscr = FUNC4(vc->vc_cols, vc->vc_rows);
	if (!uniscr)
		return -ENOMEM;

	/*
	 * Let's populate it initially with (imperfect) reverse translation.
	 * This is the next best thing we can do short of having it enabled
	 * from the start even when no users rely on this functionality. True
	 * unicode content will be available after a complete screen refresh.
	 */
	p = (unsigned short *)vc->vc_origin;
	mask = vc->vc_hi_font_mask | 0xff;
	for (y = 0; y < vc->vc_rows; y++) {
		char32_t *line = uniscr->lines[y];
		for (x = 0; x < vc->vc_cols; x++) {
			u16 glyph = FUNC3(p++) & mask;
			line[x] = FUNC2(vc, glyph, true);
		}
	}

	vc->vc_uni_screen = uniscr;
	return 0;
}