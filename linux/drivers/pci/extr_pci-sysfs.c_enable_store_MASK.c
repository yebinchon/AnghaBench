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
struct pci_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {scalar_t__ driver; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 size_t EBUSY ; 
 size_t EIO ; 
 size_t EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 size_t FUNC3 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 size_t FUNC5 (struct pci_dev*) ; 
 scalar_t__ FUNC6 (struct pci_dev*) ; 
 struct pci_dev* FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *attr,
			     const char *buf, size_t count)
{
	struct pci_dev *pdev = FUNC7(dev);
	unsigned long val;
	ssize_t result = FUNC3(buf, 0, &val);

	if (result < 0)
		return result;

	/* this can crash the machine when done on the "wrong" device */
	if (!FUNC0(CAP_SYS_ADMIN))
		return -EPERM;

	FUNC1(dev);
	if (dev->driver)
		result = -EBUSY;
	else if (val)
		result = FUNC5(pdev);
	else if (FUNC6(pdev))
		FUNC4(pdev);
	else
		result = -EIO;
	FUNC2(dev);

	return result < 0 ? result : count;
}