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
struct aty128fb_par {scalar_t__ blitter_may_be_busy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GUI_STAT ; 
 int /*<<< orphan*/  FUNC0 (struct aty128fb_par*) ; 
 int /*<<< orphan*/  FUNC1 (struct aty128fb_par*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,struct aty128fb_par*) ; 

__attribute__((used)) static void FUNC4(struct aty128fb_par *par)
{
	int i;

	FUNC3(64, par);

	for (;;) {
		for (i = 0; i < 2000000; i++) {
			if (!(FUNC2(GUI_STAT) & (1 << 31))) {
				FUNC0(par);
				par->blitter_may_be_busy = 0;
				return;
			}
		}
		FUNC1(par);
	}
}