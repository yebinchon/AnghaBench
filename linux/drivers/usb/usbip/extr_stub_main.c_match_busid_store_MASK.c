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
struct device_driver {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  busid ;

/* Variables and functions */
 int BUSID_SIZE ; 
 size_t EINVAL ; 
 size_t ENODEV ; 
 size_t ENOMEM ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device_driver *dev, const char *buf,
				 size_t count)
{
	int len;
	char busid[BUSID_SIZE];

	if (count < 5)
		return -EINVAL;

	/* busid needs to include \0 termination */
	len = FUNC3(busid, buf + 4, BUSID_SIZE);
	if (sizeof(busid) <= len)
		return -EINVAL;

	if (!FUNC4(buf, "add ", 4)) {
		if (FUNC0(busid) < 0)
			return -ENOMEM;

		FUNC2("add busid %s\n", busid);
		return count;
	}

	if (!FUNC4(buf, "del ", 4)) {
		if (FUNC1(busid) < 0)
			return -ENODEV;

		FUNC2("del busid %s\n", busid);
		return count;
	}

	return -EINVAL;
}