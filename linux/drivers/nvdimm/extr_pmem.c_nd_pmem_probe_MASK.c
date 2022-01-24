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
struct nd_namespace_common {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct nd_namespace_common*) ; 
 int FUNC1 (struct nd_namespace_common*) ; 
 scalar_t__ FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 (struct device*) ; 
 int FUNC5 (struct device*,struct nd_namespace_common*) ; 
 int FUNC6 (struct device*,struct nd_namespace_common*) ; 
 int FUNC7 (struct device*,struct nd_namespace_common*) ; 
 int FUNC8 (struct nd_namespace_common*) ; 
 struct nd_namespace_common* FUNC9 (struct device*) ; 
 int FUNC10 (struct device*,struct nd_namespace_common*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct device *dev)
{
	int ret;
	struct nd_namespace_common *ndns;

	ndns = FUNC9(dev);
	if (FUNC0(ndns))
		return FUNC1(ndns);

	if (FUNC2(dev, FUNC11(&ndns->dev)))
		return -ENXIO;

	if (FUNC3(dev))
		return FUNC8(ndns);

	if (FUNC4(dev))
		return FUNC10(dev, ndns);

	ret = FUNC5(dev, ndns);
	if (ret == 0)
		return -ENXIO;

	/*
	 * We have two failure conditions here, there is no
	 * info reserver block or we found a valid info reserve block
	 * but failed to initialize the pfn superblock.
	 *
	 * For the first case consider namespace as a raw pmem namespace
	 * and attach a disk.
	 *
	 * For the latter, consider this a success and advance the namespace
	 * seed.
	 */
	ret = FUNC7(dev, ndns);
	if (ret == 0)
		return -ENXIO;
	else if (ret == -EOPNOTSUPP)
		return ret;

	ret = FUNC6(dev, ndns);
	if (ret == 0)
		return -ENXIO;
	else if (ret == -EOPNOTSUPP)
		return ret;
	return FUNC10(dev, ndns);
}