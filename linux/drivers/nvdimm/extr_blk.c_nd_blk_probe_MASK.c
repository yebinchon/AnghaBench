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
struct nd_namespace_common {int /*<<< orphan*/  rw_bytes; int /*<<< orphan*/  dev; } ;
struct nd_namespace_blk {int /*<<< orphan*/  size; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (struct nd_namespace_common*) ; 
 int FUNC1 (struct nd_namespace_common*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct nd_namespace_blk*) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 (struct device*,struct nd_namespace_common*) ; 
 int FUNC5 (struct nd_namespace_blk*) ; 
 int /*<<< orphan*/  nsblk_rw_bytes ; 
 int FUNC6 (struct nd_namespace_common*) ; 
 int /*<<< orphan*/  FUNC7 (struct nd_namespace_common*) ; 
 struct nd_namespace_common* FUNC8 (struct device*) ; 
 struct nd_namespace_blk* FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct device *dev)
{
	struct nd_namespace_common *ndns;
	struct nd_namespace_blk *nsblk;

	ndns = FUNC8(dev);
	if (FUNC0(ndns))
		return FUNC1(ndns);

	nsblk = FUNC9(&ndns->dev);
	nsblk->size = FUNC7(ndns);
	FUNC2(dev, nsblk);

	ndns->rw_bytes = nsblk_rw_bytes;
	if (FUNC3(dev))
		return FUNC6(ndns);
	else if (FUNC4(dev, ndns) == 0) {
		/* we'll come back as btt-blk */
		return -ENXIO;
	} else
		return FUNC5(nsblk);
}