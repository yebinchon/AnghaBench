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
 int EAGAIN ; 
 int EOPNOTSUPP ; 
 unsigned long HV_EOK ; 
 unsigned long HV_EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned long FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(unsigned long secs)
{
	unsigned long ret;
	int retries = 10000;

retry:
	ret = FUNC1(secs);
	if (ret == HV_EOK)
		return 0;
	if (ret == HV_EWOULDBLOCK) {
		if (--retries > 0) {
			FUNC2(100);
			goto retry;
		}
		FUNC0("tod_set() timed out.\n");
		return -EAGAIN;
	}
	FUNC0("tod_set() not supported.\n");
	return -EOPNOTSUPP;
}