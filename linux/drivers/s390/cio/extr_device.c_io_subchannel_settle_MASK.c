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

/* Variables and functions */
 int EINTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ccw_device_init_count ; 
 int /*<<< orphan*/  ccw_device_init_wq ; 
 int /*<<< orphan*/  cio_work_q ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(void)
{
	int ret;

	ret = FUNC2(ccw_device_init_wq,
				FUNC0(&ccw_device_init_count) == 0);
	if (ret)
		return -EINTR;
	FUNC1(cio_work_q);
	return 0;
}