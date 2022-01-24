#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ open_cnt; int /*<<< orphan*/  detaching; int /*<<< orphan*/  open_rel_lock; scalar_t__ exclude; int /*<<< orphan*/  open_wait; } ;
typedef  TYPE_1__ Sg_device ;

/* Variables and functions */
 int ENODEV ; 
 int O_EXCL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(Sg_device *sdp, int flags)
{
	int retval = 0;

	if (flags & O_EXCL) {
		while (sdp->open_cnt > 0) {
			FUNC2(&sdp->open_rel_lock);
			retval = FUNC3(sdp->open_wait,
					(FUNC0(&sdp->detaching) ||
					 !sdp->open_cnt));
			FUNC1(&sdp->open_rel_lock);

			if (retval) /* -ERESTARTSYS */
				return retval;
			if (FUNC0(&sdp->detaching))
				return -ENODEV;
		}
	} else {
		while (sdp->exclude) {
			FUNC2(&sdp->open_rel_lock);
			retval = FUNC3(sdp->open_wait,
					(FUNC0(&sdp->detaching) ||
					 !sdp->exclude));
			FUNC1(&sdp->open_rel_lock);

			if (retval) /* -ERESTARTSYS */
				return retval;
			if (FUNC0(&sdp->detaching))
				return -ENODEV;
		}
	}

	return retval;
}