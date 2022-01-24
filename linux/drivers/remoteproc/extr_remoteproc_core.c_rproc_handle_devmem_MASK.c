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
struct rproc_mem_entry {int /*<<< orphan*/  node; int /*<<< orphan*/  len; int /*<<< orphan*/  da; } ;
struct device {int dummy; } ;
struct rproc {int /*<<< orphan*/  mappings; int /*<<< orphan*/  domain; struct device dev; } ;
struct fw_rsc_devmem {int /*<<< orphan*/  len; int /*<<< orphan*/  da; int /*<<< orphan*/  pa; int /*<<< orphan*/  flags; scalar_t__ reserved; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rproc_mem_entry*) ; 
 struct rproc_mem_entry* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct rproc *rproc, struct fw_rsc_devmem *rsc,
			       int offset, int avail)
{
	struct rproc_mem_entry *mapping;
	struct device *dev = &rproc->dev;
	int ret;

	/* no point in handling this resource without a valid iommu domain */
	if (!rproc->domain)
		return -EINVAL;

	if (sizeof(*rsc) > avail) {
		FUNC1(dev, "devmem rsc is truncated\n");
		return -EINVAL;
	}

	/* make sure reserved bytes are zeroes */
	if (rsc->reserved) {
		FUNC1(dev, "devmem rsc has non zero reserved bytes\n");
		return -EINVAL;
	}

	mapping = FUNC4(sizeof(*mapping), GFP_KERNEL);
	if (!mapping)
		return -ENOMEM;

	ret = FUNC2(rproc->domain, rsc->da, rsc->pa, rsc->len, rsc->flags);
	if (ret) {
		FUNC1(dev, "failed to map devmem: %d\n", ret);
		goto out;
	}

	/*
	 * We'll need this info later when we'll want to unmap everything
	 * (e.g. on shutdown).
	 *
	 * We can't trust the remote processor not to change the resource
	 * table, so we must maintain this info independently.
	 */
	mapping->da = rsc->da;
	mapping->len = rsc->len;
	FUNC5(&mapping->node, &rproc->mappings);

	FUNC0(dev, "mapped devmem pa 0x%x, da 0x%x, len 0x%x\n",
		rsc->pa, rsc->da, rsc->len);

	return 0;

out:
	FUNC3(mapping);
	return ret;
}