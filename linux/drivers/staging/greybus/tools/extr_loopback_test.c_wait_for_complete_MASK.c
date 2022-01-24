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
struct timespec {scalar_t__ tv_sec; } ;
struct sigaction {int /*<<< orphan*/  sa_mask; scalar_t__ sa_flags; int /*<<< orphan*/  sa_handler; } ;
struct loopback_test {int poll_count; TYPE_1__* fds; struct timespec poll_timeout; } ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_2__ {int revents; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int EPOLLPRI ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  handler ; 
 int /*<<< orphan*/  FUNC1 (struct loopback_test*) ; 
 int FUNC2 (TYPE_1__*,int,struct timespec*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (struct loopback_test*) ; 

__attribute__((used)) static int FUNC9(struct loopback_test *t)
{
	int number_of_events = 0;
	char dummy;
	int ret;
	int i;
	struct timespec *ts = NULL;
	struct sigaction sa;
	sigset_t mask_old, mask;

	FUNC6(&mask);
	FUNC6(&mask_old);
	FUNC5(&mask, SIGINT);
	FUNC7(SIG_BLOCK, &mask, &mask_old);

	sa.sa_handler = handler;
	sa.sa_flags = 0;
	FUNC6(&sa.sa_mask);
	if (FUNC4(SIGINT, &sa, NULL) == -1) {
		FUNC0(stderr, "sigaction error\n");
		return -1;
	}

	if (t->poll_timeout.tv_sec != 0)
		ts = &t->poll_timeout;

	while (1) {

		ret = FUNC2(t->fds, t->poll_count, ts, &mask_old);
		if (ret <= 0) {
			FUNC8(t);
			FUNC0(stderr, "Poll exit with errno %d\n", errno);
			return -1;
		}

		for (i = 0; i < t->poll_count; i++) {
			if (t->fds[i].revents & EPOLLPRI) {
				/* Dummy read to clear the event */
				FUNC3(t->fds[i].fd, &dummy, 1);
				number_of_events++;
			}
		}

		if (number_of_events == t->poll_count)
			break;
	}

	if (!FUNC1(t)) {
		FUNC0(stderr, "Iteration count did not finish!\n");
		return -1;
	}

	return 0;
}