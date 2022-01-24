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
struct device {int dummy; } ;
struct rproc {char* firmware; int max_notifyid; int /*<<< orphan*/ * table_ptr; int /*<<< orphan*/ * cached_table; scalar_t__ nb_vdev; int /*<<< orphan*/  bootaddr; struct device dev; } ;
struct firmware {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct rproc*) ; 
 int /*<<< orphan*/  FUNC4 (struct rproc*) ; 
 int FUNC5 (struct rproc*) ; 
 int FUNC6 (struct rproc*,struct firmware const*) ; 
 int /*<<< orphan*/  FUNC7 (struct rproc*,struct firmware const*) ; 
 int FUNC8 (struct rproc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rproc_loading_handlers ; 
 int FUNC9 (struct rproc*,struct firmware const*) ; 
 int /*<<< orphan*/  FUNC10 (struct rproc*) ; 
 int FUNC11 (struct rproc*,struct firmware const*) ; 

__attribute__((used)) static int FUNC12(struct rproc *rproc, const struct firmware *fw)
{
	struct device *dev = &rproc->dev;
	const char *name = rproc->firmware;
	int ret;

	ret = FUNC6(rproc, fw);
	if (ret)
		return ret;

	FUNC1(dev, "Booting fw image %s, size %zd\n", name, fw->size);

	/*
	 * if enabling an IOMMU isn't relevant for this rproc, this is
	 * just a nop
	 */
	ret = FUNC5(rproc);
	if (ret) {
		FUNC0(dev, "can't enable iommu: %d\n", ret);
		return ret;
	}

	rproc->bootaddr = FUNC7(rproc, fw);

	/* Load resource table, core dump segment list etc from the firmware */
	ret = FUNC9(rproc, fw);
	if (ret)
		goto disable_iommu;

	/* reset max_notifyid */
	rproc->max_notifyid = -1;

	/* reset handled vdev */
	rproc->nb_vdev = 0;

	/* handle fw resources which are required to boot rproc */
	ret = FUNC8(rproc, rproc_loading_handlers);
	if (ret) {
		FUNC0(dev, "Failed to process resources: %d\n", ret);
		goto clean_up_resources;
	}

	/* Allocate carveout resources associated to rproc */
	ret = FUNC3(rproc);
	if (ret) {
		FUNC0(dev, "Failed to allocate associated carveouts: %d\n",
			ret);
		goto clean_up_resources;
	}

	ret = FUNC11(rproc, fw);
	if (ret)
		goto clean_up_resources;

	return 0;

clean_up_resources:
	FUNC10(rproc);
	FUNC2(rproc->cached_table);
	rproc->cached_table = NULL;
	rproc->table_ptr = NULL;
disable_iommu:
	FUNC4(rproc);
	return ret;
}