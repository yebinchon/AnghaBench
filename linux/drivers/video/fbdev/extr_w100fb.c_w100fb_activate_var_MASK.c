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
struct w100fb_par {int /*<<< orphan*/  blanked; TYPE_1__* mach; } ;
struct w100_tg_info {int /*<<< orphan*/  (* change ) (struct w100fb_par*) ;} ;
struct TYPE_2__ {struct w100_tg_info* tg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct w100fb_par*) ; 
 int /*<<< orphan*/  FUNC1 (struct w100fb_par*) ; 
 int /*<<< orphan*/  FUNC2 (struct w100fb_par*) ; 
 int /*<<< orphan*/  FUNC3 (struct w100fb_par*) ; 
 int /*<<< orphan*/  FUNC4 (struct w100fb_par*) ; 
 int /*<<< orphan*/  FUNC5 (struct w100fb_par*) ; 
 int /*<<< orphan*/  FUNC6 (struct w100fb_par*) ; 
 int /*<<< orphan*/  FUNC7 (struct w100fb_par*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct w100fb_par*) ; 

__attribute__((used)) static void FUNC12(struct w100fb_par *par)
{
	struct w100_tg_info *tg = par->mach->tg;

	FUNC5(par);
	FUNC7(par);
	FUNC2(par);
	FUNC11(par);
	FUNC10();

	FUNC8();
	FUNC4(par);
	FUNC6(par);
	FUNC9();
	FUNC3(par);

	FUNC0(par);

	if (!par->blanked && tg && tg->change)
		tg->change(par);
}