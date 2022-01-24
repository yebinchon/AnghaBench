#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct pci_dev {int /*<<< orphan*/  dev; TYPE_2__* driver; TYPE_1__* sriov; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int (* sriov_configure ) (struct pci_dev*,int) ;} ;
struct TYPE_3__ {int num_VFs; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,char*) ; 
 int FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,char*,int,int) ; 
 int FUNC6 (struct pci_dev*,int) ; 
 int FUNC7 (struct pci_dev*,int) ; 
 struct pci_dev* FUNC8 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
				  struct device_attribute *attr,
				  const char *buf, size_t count)
{
	struct pci_dev *pdev = FUNC8(dev);
	int ret;
	u16 num_vfs;

	ret = FUNC2(buf, 0, &num_vfs);
	if (ret < 0)
		return ret;

	if (num_vfs > FUNC4(pdev))
		return -ERANGE;

	FUNC0(&pdev->dev);

	if (num_vfs == pdev->sriov->num_VFs)
		goto exit;

	/* is PF driver loaded w/callback */
	if (!pdev->driver || !pdev->driver->sriov_configure) {
		FUNC3(pdev, "Driver does not support SRIOV configuration via sysfs\n");
		ret = -ENOENT;
		goto exit;
	}

	if (num_vfs == 0) {
		/* disable VFs */
		ret = pdev->driver->sriov_configure(pdev, 0);
		goto exit;
	}

	/* enable VFs */
	if (pdev->sriov->num_VFs) {
		FUNC5(pdev, "%d VFs already enabled. Disable before enabling %d VFs\n",
			 pdev->sriov->num_VFs, num_vfs);
		ret = -EBUSY;
		goto exit;
	}

	ret = pdev->driver->sriov_configure(pdev, num_vfs);
	if (ret < 0)
		goto exit;

	if (ret != num_vfs)
		FUNC5(pdev, "%d VFs requested; only %d enabled\n",
			 num_vfs, ret);

exit:
	FUNC1(&pdev->dev);

	if (ret < 0)
		return ret;

	return count;
}