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
struct w1_master {int /*<<< orphan*/  refcnt; scalar_t__ search_count; int /*<<< orphan*/  list_mutex; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  W1_SEARCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 unsigned long FUNC6 (unsigned long) ; 
 unsigned long FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct w1_master*) ; 
 int /*<<< orphan*/  FUNC9 (struct w1_master*,int /*<<< orphan*/ ) ; 
 int w1_timeout ; 
 scalar_t__ w1_timeout_us ; 

int FUNC10(void *data)
{
	struct w1_master *dev = (struct w1_master *) data;
	/* As long as w1_timeout is only set by a module parameter the sleep
	 * time can be calculated in jiffies once.
	 */
	const unsigned long jtime =
	  FUNC7(w1_timeout * 1000000 + w1_timeout_us);
	/* remainder if it woke up early */
	unsigned long jremain = 0;

	for (;;) {

		if (!jremain && dev->search_count) {
			FUNC3(&dev->mutex);
			FUNC9(dev, W1_SEARCH);
			FUNC4(&dev->mutex);
		}

		FUNC3(&dev->list_mutex);
		/* Note, w1_process_callback drops the lock while processing,
		 * but locks it again before returning.
		 */
		if (!FUNC8(dev) && jremain) {
			/* a wake up is either to stop the thread, process
			 * callbacks, or search, it isn't process callbacks, so
			 * schedule a search.
			 */
			jremain = 1;
		}

		FUNC0(TASK_INTERRUPTIBLE);

		/* hold list_mutex until after interruptible to prevent loosing
		 * the wakeup signal when async_cmd is added.
		 */
		FUNC4(&dev->list_mutex);

		if (FUNC2())
			break;

		/* Only sleep when the search is active. */
		if (dev->search_count) {
			if (!jremain)
				jremain = jtime;
			jremain = FUNC6(jremain);
		}
		else
			FUNC5();
	}

	FUNC1(&dev->refcnt);

	return 0;
}