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
struct pcifront_device {TYPE_1__* xdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 () ; 
 struct pcifront_device* pcifront_dev ; 
 int /*<<< orphan*/  pcifront_dev_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct pcifront_device *pdev)
{
	int err = 0;

	FUNC3(&pcifront_dev_lock);

	if (!pcifront_dev) {
		FUNC1(&pdev->xdev->dev, "Installing PCI frontend\n");
		pcifront_dev = pdev;
	} else
		err = -EEXIST;

	FUNC4(&pcifront_dev_lock);

	if (!err && !FUNC5()) {
		err = FUNC2();
		if (err)
			FUNC0(&pdev->xdev->dev, "Could not setup SWIOTLB!\n");
	}
	return err;
}