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
struct ffs_dev {int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 struct ffs_dev* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  ffs_devices ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct ffs_dev*) ; 
 struct ffs_dev* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ffs_dev *FUNC7(void)
{
	struct ffs_dev *dev;
	int ret;

	if (FUNC1())
			return FUNC0(-EBUSY);

	dev = FUNC4(sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return FUNC0(-ENOMEM);

	if (FUNC6(&ffs_devices)) {
		ret = FUNC2();
		if (ret) {
			FUNC3(dev);
			return FUNC0(ret);
		}
	}

	FUNC5(&dev->entry, &ffs_devices);

	return dev;
}