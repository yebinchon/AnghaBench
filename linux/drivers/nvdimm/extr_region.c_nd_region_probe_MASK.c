#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource {scalar_t__ end; scalar_t__ start; } ;
struct nd_region_data {int ns_active; int ns_count; } ;
struct TYPE_4__ {int /*<<< orphan*/  sd; } ;
struct TYPE_5__ {TYPE_1__ kobj; } ;
struct nd_region {scalar_t__ num_lanes; int /*<<< orphan*/  dax_seed; int /*<<< orphan*/  pfn_seed; int /*<<< orphan*/  btt_seed; int /*<<< orphan*/  bb; scalar_t__ ndr_size; scalar_t__ ndr_start; TYPE_2__ dev; int /*<<< orphan*/  bb_state; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,char*) ; 
 struct nd_region_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC4 (struct device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int FUNC6 (struct nd_region*) ; 
 int /*<<< orphan*/  FUNC7 (struct nd_region*) ; 
 int /*<<< orphan*/  FUNC8 (struct nd_region*) ; 
 int /*<<< orphan*/  FUNC9 (struct nd_region*) ; 
 int FUNC10 (struct nd_region*) ; 
 int FUNC11 (struct nd_region*,int*) ; 
 scalar_t__ FUNC12 () ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct nd_region*,int /*<<< orphan*/ *,struct resource*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,unsigned long*) ; 
 struct nd_region* FUNC17 (struct device*) ; 

__attribute__((used)) static int FUNC18(struct device *dev)
{
	int err, rc;
	static unsigned long once;
	struct nd_region_data *ndrd;
	struct nd_region *nd_region = FUNC17(dev);

	if (nd_region->num_lanes > FUNC12()
			&& nd_region->num_lanes < FUNC13()
			&& !FUNC16(0, &once)) {
		FUNC0(dev, "online cpus (%d) < concurrent i/o lanes (%d) < possible cpus (%d)\n",
				FUNC12(), nd_region->num_lanes,
				FUNC13());
		FUNC0(dev, "setting nr_cpus=%d may yield better libnvdimm device performance\n",
				nd_region->num_lanes);
	}

	rc = FUNC10(nd_region);
	if (rc)
		return rc;

	rc = FUNC6(nd_region);
	if (rc)
		return rc;

	if (FUNC5(&nd_region->dev)) {
		struct resource ndr_res;

		if (FUNC4(dev, &nd_region->bb))
			return -ENODEV;
		nd_region->bb_state = FUNC15(nd_region->dev.kobj.sd,
						       "badblocks");
		if (!nd_region->bb_state)
			FUNC3(&nd_region->dev,
					"'badblocks' notification disabled\n");
		ndr_res.start = nd_region->ndr_start;
		ndr_res.end = nd_region->ndr_start + nd_region->ndr_size - 1;
		FUNC14(nd_region, &nd_region->bb, &ndr_res);
	}

	rc = FUNC11(nd_region, &err);
	if (rc < 0)
		return rc;

	ndrd = FUNC2(dev);
	ndrd->ns_active = rc;
	ndrd->ns_count = rc + err;

	if (rc && err && rc == err)
		return -ENODEV;

	nd_region->btt_seed = FUNC7(nd_region);
	nd_region->pfn_seed = FUNC9(nd_region);
	nd_region->dax_seed = FUNC8(nd_region);
	if (err == 0)
		return 0;

	/*
	 * Given multiple namespaces per region, we do not want to
	 * disable all the successfully registered peer namespaces upon
	 * a single registration failure.  If userspace is missing a
	 * namespace that it expects it can disable/re-enable the region
	 * to retry discovery after correcting the failure.
	 * <regionX>/namespaces returns the current
	 * "<async-registered>/<total>" namespace count.
	 */
	FUNC1(dev, "failed to register %d namespace%s, continuing...\n",
			err, err == 1 ? "" : "s");
	return 0;
}