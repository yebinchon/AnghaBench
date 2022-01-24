#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u32 ;
struct vsoc_region_data {int /*<<< orphan*/  futex_wait_queue; } ;
struct vsoc_device_region {scalar_t__ region_begin_offset; scalar_t__ region_end_offset; } ;
struct vsoc_cond_wait {int offset; int wait_type; scalar_t__ wake_time_nsec; scalar_t__ value; int /*<<< orphan*/  wakes; int /*<<< orphan*/  wake_time_sec; } ;
struct hrtimer_sleeper {int /*<<< orphan*/  timer; int /*<<< orphan*/  task; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;
typedef  int /*<<< orphan*/  atomic_t ;
struct TYPE_5__ {int /*<<< orphan*/  timer_slack_ns; } ;
struct TYPE_4__ {struct vsoc_region_data* regions_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int E2BIG ; 
 int EADDRNOTAVAIL ; 
 int EINTR ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 scalar_t__ NSEC_PER_SEC ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
#define  VSOC_WAIT_IF_EQUAL 129 
#define  VSOC_WAIT_IF_EQUAL_TIMEOUT 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct hrtimer_sleeper*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hrtimer_sleeper*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (TYPE_2__*) ; 
 TYPE_1__ vsoc_dev ; 
 struct vsoc_device_region* FUNC16 (struct file*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC17(struct file *filp, struct vsoc_cond_wait *arg)
{
	FUNC0(wait);
	u32 region_number = FUNC10(FUNC3(filp));
	struct vsoc_region_data *data = vsoc_dev.regions_data + region_number;
	struct hrtimer_sleeper timeout, *to = NULL;
	int ret = 0;
	struct vsoc_device_region *region_p = FUNC16(filp);
	atomic_t *address = NULL;
	ktime_t wake_time;

	/* Ensure that the offset is aligned */
	if (arg->offset & (sizeof(uint32_t) - 1))
		return -EADDRNOTAVAIL;
	/* Ensure that the offset is within shared memory */
	if (((uint64_t)arg->offset) + region_p->region_begin_offset +
	    sizeof(uint32_t) > region_p->region_end_offset)
		return -E2BIG;
	address = FUNC14(region_p->region_begin_offset +
					  arg->offset);

	/* Ensure that the type of wait is valid */
	switch (arg->wait_type) {
	case VSOC_WAIT_IF_EQUAL:
		break;
	case VSOC_WAIT_IF_EQUAL_TIMEOUT:
		to = &timeout;
		break;
	default:
		return -EINVAL;
	}

	if (to) {
		/* Copy the user-supplied timesec into the kernel structure.
		 * We do things this way to flatten differences between 32 bit
		 * and 64 bit timespecs.
		 */
		if (arg->wake_time_nsec >= NSEC_PER_SEC)
			return -EINVAL;
		wake_time = FUNC11(arg->wake_time_sec, arg->wake_time_nsec);

		FUNC7(to, CLOCK_MONOTONIC,
					      HRTIMER_MODE_ABS);
		FUNC8(&to->timer, wake_time,
					     current->timer_slack_ns);
	}

	while (1) {
		FUNC13(&data->futex_wait_queue, &wait,
				TASK_INTERRUPTIBLE);
		/*
		 * Check the sentinel value after prepare_to_wait. If the value
		 * changes after this check the writer will call signal,
		 * changing the task state from INTERRUPTIBLE to RUNNING. That
		 * will ensure that schedule() will eventually schedule this
		 * task.
		 */
		if (FUNC1(address) != arg->value) {
			ret = 0;
			break;
		}
		if (to) {
			FUNC9(to, HRTIMER_MODE_ABS);
			if (FUNC12(to->task))
				FUNC5();
			FUNC6(&to->timer);
			if (!to->task) {
				ret = -ETIMEDOUT;
				break;
			}
		} else {
			FUNC5();
		}
		/* Count the number of times that we woke up. This is useful
		 * for unit testing.
		 */
		++arg->wakes;
		if (FUNC15(current)) {
			ret = -EINTR;
			break;
		}
	}
	FUNC4(&data->futex_wait_queue, &wait);
	if (to)
		FUNC2(&to->timer);
	return ret;
}