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
struct ffs_dev {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 struct ffs_dev* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

int FUNC5(struct ffs_dev *dev, const char *name)
{
	struct ffs_dev *existing;
	int ret = 0;

	FUNC2();

	existing = FUNC1(name);
	if (!existing)
		FUNC4(dev->name, name, FUNC0(dev->name));
	else if (existing != dev)
		ret = -EBUSY;

	FUNC3();

	return ret;
}