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
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 scalar_t__ FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct pci_dev* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr,
			   const char *buf, size_t count)
{
	struct pci_dev *pdev = FUNC4(dev);
	unsigned long val;
	ssize_t result = FUNC0(buf, 0, &val);

	if (result < 0)
		return result;

	if (val != 1)
		return -EINVAL;

	FUNC2(dev);
	result = FUNC1(pdev);
	FUNC3(dev);
	if (result < 0)
		return result;

	return count;
}