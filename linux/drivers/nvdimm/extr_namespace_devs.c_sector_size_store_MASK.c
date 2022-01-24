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
struct nd_region {int dummy; } ;
struct nd_namespace_pmem {unsigned long lbasize; } ;
struct nd_namespace_blk {unsigned long lbasize; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int ssize_t ;
struct TYPE_2__ {scalar_t__ claim; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENXIO ; 
 unsigned long* blk_lbasize_supported ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,char*,char const*,char*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int FUNC5 (struct nd_region*,struct device*) ; 
 int FUNC6 (struct device*,char const*,unsigned long*,unsigned long const*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 unsigned long* pmem_lbasize_supported ; 
 struct nd_namespace_blk* FUNC9 (struct device*) ; 
 struct nd_namespace_pmem* FUNC10 (struct device*) ; 
 struct nd_region* FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC13(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t len)
{
	struct nd_region *nd_region = FUNC11(dev->parent);
	const unsigned long *supported;
	unsigned long *lbasize;
	ssize_t rc = 0;

	if (FUNC1(dev)) {
		struct nd_namespace_blk *nsblk = FUNC9(dev);

		lbasize = &nsblk->lbasize;
		supported = blk_lbasize_supported;
	} else if (FUNC2(dev)) {
		struct nd_namespace_pmem *nspm = FUNC10(dev);

		lbasize = &nspm->lbasize;
		supported = pmem_lbasize_supported;
	} else
		return -ENXIO;

	FUNC3(dev);
	FUNC7(dev);
	if (FUNC12(dev)->claim)
		rc = -EBUSY;
	if (rc >= 0)
		rc = FUNC6(dev, buf, lbasize, supported);
	if (rc >= 0)
		rc = FUNC5(nd_region, dev);
	FUNC0(dev, "result: %zd %s: %s%s", rc, rc < 0 ? "tried" : "wrote",
			buf, buf[len - 1] == '\n' ? "" : "\n");
	FUNC8(dev);
	FUNC4(dev);

	return rc ? rc : len;
}