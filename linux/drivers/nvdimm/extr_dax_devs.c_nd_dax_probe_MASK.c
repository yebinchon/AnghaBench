#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nd_region {int dummy; } ;
struct nd_pfn_sb {int dummy; } ;
struct nd_pfn {int /*<<< orphan*/  ndns; struct nd_pfn_sb* pfn_sb; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct nd_namespace_common {int claim_class; TYPE_1__ dev; scalar_t__ force_raw; } ;
struct nd_dax {struct nd_pfn nd_pfn; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAX_SIG ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  NVDIMM_CCLASS_DAX 129 
#define  NVDIMM_CCLASS_NONE 128 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char*) ; 
 char* FUNC2 (struct device*) ; 
 struct nd_pfn_sb* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct nd_dax* FUNC4 (struct nd_region*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ *) ; 
 struct device* FUNC6 (struct nd_pfn*,struct nd_namespace_common*) ; 
 int FUNC7 (struct nd_pfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 struct nd_region* FUNC11 (int /*<<< orphan*/ ) ; 

int FUNC12(struct device *dev, struct nd_namespace_common *ndns)
{
	int rc;
	struct nd_dax *nd_dax;
	struct device *dax_dev;
	struct nd_pfn *nd_pfn;
	struct nd_pfn_sb *pfn_sb;
	struct nd_region *nd_region = FUNC11(ndns->dev.parent);

	if (ndns->force_raw)
		return -ENODEV;

	switch (ndns->claim_class) {
	case NVDIMM_CCLASS_NONE:
	case NVDIMM_CCLASS_DAX:
		break;
	default:
		return -ENODEV;
	}

	FUNC8(&ndns->dev);
	nd_dax = FUNC4(nd_region);
	nd_pfn = &nd_dax->nd_pfn;
	dax_dev = FUNC6(nd_pfn, ndns);
	FUNC9(&ndns->dev);
	if (!dax_dev)
		return -ENOMEM;
	pfn_sb = FUNC3(dev, sizeof(*pfn_sb), GFP_KERNEL);
	nd_pfn->pfn_sb = pfn_sb;
	rc = FUNC7(nd_pfn, DAX_SIG);
	FUNC1(dev, "dax: %s\n", rc == 0 ? FUNC2(dax_dev) : "<none>");
	if (rc < 0) {
		FUNC5(dax_dev, &nd_pfn->ndns);
		FUNC10(dax_dev);
	} else
		FUNC0(dax_dev);

	return rc;
}