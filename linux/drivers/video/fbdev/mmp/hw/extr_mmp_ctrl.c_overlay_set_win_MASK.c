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
struct mmp_win {int* pitch; int ysrc; int xsrc; int ydst; int xdst; int ypos; int xpos; } ;
struct mmp_overlay {int /*<<< orphan*/  access_ok; int /*<<< orphan*/  win; int /*<<< orphan*/  path; } ;
struct lcd_regs {int /*<<< orphan*/  g_start; int /*<<< orphan*/  g_size_z; int /*<<< orphan*/  g_size; int /*<<< orphan*/  g_pitch; int /*<<< orphan*/  v_start; int /*<<< orphan*/  v_size_z; int /*<<< orphan*/  v_size; int /*<<< orphan*/  v_pitch_uv; int /*<<< orphan*/  v_pitch_yc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmp_overlay*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mmp_win*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct mmp_overlay*) ; 
 struct lcd_regs* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct mmp_overlay *overlay, struct mmp_win *win)
{
	struct lcd_regs *regs = FUNC5(overlay->path);

	/* assert win supported */
	FUNC1(&overlay->win, win, sizeof(struct mmp_win));

	FUNC2(&overlay->access_ok);

	if (FUNC4(overlay)) {
		FUNC6(win->pitch[0], &regs->v_pitch_yc);
		FUNC6(win->pitch[2] << 16 |
				win->pitch[1], &regs->v_pitch_uv);

		FUNC6((win->ysrc << 16) | win->xsrc, &regs->v_size);
		FUNC6((win->ydst << 16) | win->xdst, &regs->v_size_z);
		FUNC6(win->ypos << 16 | win->xpos, &regs->v_start);
	} else {
		FUNC6(win->pitch[0], &regs->g_pitch);

		FUNC6((win->ysrc << 16) | win->xsrc, &regs->g_size);
		FUNC6((win->ydst << 16) | win->xdst, &regs->g_size_z);
		FUNC6(win->ypos << 16 | win->xpos, &regs->g_start);
	}

	FUNC0(overlay);
	FUNC3(&overlay->access_ok);
}