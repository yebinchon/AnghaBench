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
struct mutex {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (char const*,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*) ; 
 unsigned long* FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*,unsigned long*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long*,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC6 (char const*,unsigned long*,int) ; 
 scalar_t__ FUNC7 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC8 (struct mutex*) ; 

int FUNC9(const char *str,
		      unsigned long *bitmap, int bits,
		      struct mutex *lock)
{
	unsigned long *newmap, size;
	int rc;

	/* bits needs to be a multiple of 8 */
	if (bits & 0x07)
		return -EINVAL;

	size = FUNC0(bits)*sizeof(unsigned long);
	newmap = FUNC3(size, GFP_KERNEL);
	if (!newmap)
		return -ENOMEM;
	if (FUNC7(lock)) {
		FUNC2(newmap);
		return -ERESTARTSYS;
	}

	if (*str == '+' || *str == '-') {
		FUNC4(newmap, bitmap, size);
		rc = FUNC6(str, newmap, bits);
	} else {
		FUNC5(newmap, 0, size);
		rc = FUNC1(str, newmap, bits);
	}
	if (rc == 0)
		FUNC4(bitmap, newmap, size);
	FUNC8(lock);
	FUNC2(newmap);
	return rc;
}