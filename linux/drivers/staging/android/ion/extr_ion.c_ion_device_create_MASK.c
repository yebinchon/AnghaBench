#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* name; int /*<<< orphan*/ * parent; int /*<<< orphan*/ * fops; int /*<<< orphan*/  minor; } ;
struct ion_device {int /*<<< orphan*/  heaps; int /*<<< orphan*/  lock; int /*<<< orphan*/  debug_root; TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MISC_DYNAMIC_MINOR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ion_device* internal_dev ; 
 int /*<<< orphan*/  ion_fops ; 
 int /*<<< orphan*/  FUNC2 (struct ion_device*) ; 
 struct ion_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(void)
{
	struct ion_device *idev;
	int ret;

	idev = FUNC3(sizeof(*idev), GFP_KERNEL);
	if (!idev)
		return -ENOMEM;

	idev->dev.minor = MISC_DYNAMIC_MINOR;
	idev->dev.name = "ion";
	idev->dev.fops = &ion_fops;
	idev->dev.parent = NULL;
	ret = FUNC4(&idev->dev);
	if (ret) {
		FUNC6("ion: failed to register misc device.\n");
		FUNC2(idev);
		return ret;
	}

	idev->debug_root = FUNC0("ion", NULL);
	FUNC1(&idev->lock);
	FUNC5(&idev->heaps);
	internal_dev = idev;
	return 0;
}