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
struct fsg_lun {int dummy; } ;
struct fsg_common {scalar_t__ state; int /*<<< orphan*/  thread_notifier; int /*<<< orphan*/  filesem; struct fsg_lun** luns; int /*<<< orphan*/  lock; int /*<<< orphan*/ * thread_task; int /*<<< orphan*/  running; } ;

/* Variables and functions */
 int FUNC0 (struct fsg_lun**) ; 
 scalar_t__ FSG_STATE_TERMINATED ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC3 (struct fsg_common*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct fsg_common*) ; 
 scalar_t__ FUNC6 (struct fsg_common*) ; 
 int /*<<< orphan*/  FUNC7 (struct fsg_lun*) ; 
 scalar_t__ FUNC8 (struct fsg_lun*) ; 
 scalar_t__ FUNC9 (struct fsg_common*) ; 
 int /*<<< orphan*/  FUNC10 (struct fsg_common*) ; 
 int /*<<< orphan*/  FUNC11 (struct fsg_common*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct fsg_common*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(void *common_)
{
	struct fsg_common	*common = common_;
	int			i;

	/*
	 * Allow the thread to be killed by a signal, but set the signal mask
	 * to block everything but INT, TERM, KILL, and USR1.
	 */
	FUNC1(SIGINT);
	FUNC1(SIGTERM);
	FUNC1(SIGKILL);
	FUNC1(SIGUSR1);

	/* Allow the thread to be frozen */
	FUNC12();

	/* The main loop */
	while (common->state != FSG_STATE_TERMINATED) {
		if (FUNC5(common) || FUNC13(current)) {
			FUNC10(common);
			continue;
		}

		if (!common->running) {
			FUNC14(common, true, NULL);
			continue;
		}

		if (FUNC9(common) || FUNC5(common))
			continue;
		if (FUNC3(common) || FUNC5(common))
			continue;
		if (FUNC6(common) || FUNC5(common))
			continue;
		FUNC11(common);
	}

	FUNC15(&common->lock);
	common->thread_task = NULL;
	FUNC16(&common->lock);

	/* Eject media from all LUNs */

	FUNC4(&common->filesem);
	for (i = 0; i < FUNC0(common->luns); i++) {
		struct fsg_lun *curlun = common->luns[i];

		if (curlun && FUNC8(curlun))
			FUNC7(curlun);
	}
	FUNC17(&common->filesem);

	/* Let fsg_unbind() know the thread has exited */
	FUNC2(&common->thread_notifier, 0);
}