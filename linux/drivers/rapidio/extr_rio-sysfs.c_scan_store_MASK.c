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
struct bus_type {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 long RIO_MAX_MPORTS ; 
 long RIO_MPORT_ANY ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,long*) ; 
 int FUNC1 () ; 
 int FUNC2 (int) ; 

__attribute__((used)) static ssize_t FUNC3(struct bus_type *bus, const char *buf, size_t count)
{
	long val;
	int rc;

	if (FUNC0(buf, 0, &val) < 0)
		return -EINVAL;

	if (val == RIO_MPORT_ANY) {
		rc = FUNC1();
		goto exit;
	}

	if (val < 0 || val >= RIO_MAX_MPORTS)
		return -EINVAL;

	rc = FUNC2((int)val);
exit:
	if (!rc)
		rc = count;

	return rc;
}