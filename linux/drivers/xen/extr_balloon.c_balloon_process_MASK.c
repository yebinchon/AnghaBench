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
struct work_struct {int dummy; } ;
typedef  enum bp_state { ____Placeholder_bp_state } bp_state ;
struct TYPE_2__ {int schedule_delay; } ;

/* Variables and functions */
 int BP_DONE ; 
 int BP_EAGAIN ; 
 int /*<<< orphan*/  GFP_BALLOON ; 
 int HZ ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  balloon_mutex ; 
 TYPE_1__ balloon_stats ; 
 int /*<<< orphan*/  balloon_worker ; 
 int /*<<< orphan*/  FUNC1 () ; 
 long FUNC2 () ; 
 int FUNC3 (long,int /*<<< orphan*/ ) ; 
 int FUNC4 (long) ; 
 long FUNC5 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 long totalreserve_pages ; 
 int FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct work_struct *work)
{
	enum bp_state state = BP_DONE;
	long credit;


	do {
		FUNC6(&balloon_mutex);

		credit = FUNC2();

		if (credit > 0) {
			if (FUNC0())
				state = FUNC4(credit);
			else
				state = FUNC8();
		}

		if (credit < 0) {
			long n_pages;

			n_pages = FUNC5(-credit, FUNC10());
			state = FUNC3(n_pages, GFP_BALLOON);
			if (state == BP_DONE && n_pages != -credit &&
			    n_pages < totalreserve_pages)
				state = BP_EAGAIN;
		}

		state = FUNC11(state);

		FUNC7(&balloon_mutex);

		FUNC1();

	} while (credit && state == BP_DONE);

	/* Schedule more work if there is some still to be done. */
	if (state == BP_EAGAIN)
		FUNC9(&balloon_worker, balloon_stats.schedule_delay * HZ);
}