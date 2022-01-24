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
typedef  int /*<<< orphan*/  substring_t ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC4(substring_t args[], kgid_t *result)
{
	unsigned long value;
	kgid_t gid;
	int rc;

	rc = FUNC1(args, &value);
	if (rc)
		return rc;

	gid = FUNC3(FUNC0(), value);
	if (!FUNC2(gid))
		return -EINVAL;

	*result = gid;
	return 0;
}