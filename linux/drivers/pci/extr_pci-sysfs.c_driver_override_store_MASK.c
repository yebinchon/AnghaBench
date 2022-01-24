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
struct pci_dev {char* driver_override; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,size_t,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,char) ; 
 scalar_t__ FUNC5 (char*) ; 
 struct pci_dev* FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t count)
{
	struct pci_dev *pdev = FUNC6(dev);
	char *driver_override, *old, *cp;

	/* We need to keep extra room for a newline */
	if (count >= (PAGE_SIZE - 1))
		return -EINVAL;

	driver_override = FUNC3(buf, count, GFP_KERNEL);
	if (!driver_override)
		return -ENOMEM;

	cp = FUNC4(driver_override, '\n');
	if (cp)
		*cp = '\0';

	FUNC0(dev);
	old = pdev->driver_override;
	if (FUNC5(driver_override)) {
		pdev->driver_override = driver_override;
	} else {
		FUNC2(driver_override);
		pdev->driver_override = NULL;
	}
	FUNC1(dev);

	FUNC2(old);

	return count;
}