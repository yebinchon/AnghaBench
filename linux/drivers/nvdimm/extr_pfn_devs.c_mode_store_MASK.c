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
struct nd_pfn {int /*<<< orphan*/  mode; } ;
struct device_attribute {int dummy; } ;
struct device {scalar_t__ driver; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  PFN_MODE_NONE ; 
 int /*<<< orphan*/  PFN_MODE_PMEM ; 
 int /*<<< orphan*/  PFN_MODE_RAM ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 scalar_t__ FUNC5 (char const*,char*,size_t) ; 
 struct nd_pfn* FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t len)
{
	struct nd_pfn *nd_pfn = FUNC6(dev);
	ssize_t rc = 0;

	FUNC1(dev);
	FUNC3(dev);
	if (dev->driver)
		rc = -EBUSY;
	else {
		size_t n = len - 1;

		if (FUNC5(buf, "pmem\n", n) == 0
				|| FUNC5(buf, "pmem", n) == 0) {
			nd_pfn->mode = PFN_MODE_PMEM;
		} else if (FUNC5(buf, "ram\n", n) == 0
				|| FUNC5(buf, "ram", n) == 0)
			nd_pfn->mode = PFN_MODE_RAM;
		else if (FUNC5(buf, "none\n", n) == 0
				|| FUNC5(buf, "none", n) == 0)
			nd_pfn->mode = PFN_MODE_NONE;
		else
			rc = -EINVAL;
	}
	FUNC0(dev, "result: %zd wrote: %s%s", rc, buf,
			buf[len - 1] == '\n' ? "" : "\n");
	FUNC4(dev);
	FUNC2(dev);

	return rc ? rc : len;
}