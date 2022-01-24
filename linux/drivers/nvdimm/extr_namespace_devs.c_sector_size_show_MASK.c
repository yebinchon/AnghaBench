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
struct nd_namespace_pmem {int /*<<< orphan*/  lbasize; } ;
struct nd_namespace_blk {int /*<<< orphan*/  lbasize; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  blk_lbasize_supported ; 
 scalar_t__ FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  pmem_lbasize_supported ; 
 struct nd_namespace_blk* FUNC3 (struct device*) ; 
 struct nd_namespace_pmem* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	if (FUNC0(dev)) {
		struct nd_namespace_blk *nsblk = FUNC3(dev);

		return FUNC2(nsblk->lbasize,
				blk_lbasize_supported, buf);
	}

	if (FUNC1(dev)) {
		struct nd_namespace_pmem *nspm = FUNC4(dev);

		return FUNC2(nspm->lbasize,
				pmem_lbasize_supported, buf);
	}
	return -ENXIO;
}