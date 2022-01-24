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
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct nd_namespace_common {int claim_class; TYPE_1__ dev; scalar_t__ force_raw; } ;
struct nd_btt {int /*<<< orphan*/  ndns; } ;
struct device {int dummy; } ;
struct btt_sb {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  NVDIMM_CCLASS_BTT 130 
#define  NVDIMM_CCLASS_BTT2 129 
#define  NVDIMM_CCLASS_NONE 128 
 struct device* FUNC0 (struct nd_region*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nd_namespace_common*) ; 
 int FUNC1 (struct nd_btt*,struct nd_namespace_common*,struct btt_sb*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char*) ; 
 char* FUNC3 (struct device*) ; 
 struct btt_sb* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 struct nd_btt* FUNC9 (struct device*) ; 
 struct nd_region* FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct device *dev, struct nd_namespace_common *ndns)
{
	int rc;
	struct device *btt_dev;
	struct btt_sb *btt_sb;
	struct nd_region *nd_region = FUNC10(ndns->dev.parent);

	if (ndns->force_raw)
		return -ENODEV;

	switch (ndns->claim_class) {
	case NVDIMM_CCLASS_NONE:
	case NVDIMM_CCLASS_BTT:
	case NVDIMM_CCLASS_BTT2:
		break;
	default:
		return -ENODEV;
	}

	FUNC6(&ndns->dev);
	btt_dev = FUNC0(nd_region, 0, NULL, ndns);
	FUNC7(&ndns->dev);
	if (!btt_dev)
		return -ENOMEM;
	btt_sb = FUNC4(dev, sizeof(*btt_sb), GFP_KERNEL);
	rc = FUNC1(FUNC9(btt_dev), ndns, btt_sb);
	FUNC2(dev, "btt: %s\n", rc == 0 ? FUNC3(btt_dev) : "<none>");
	if (rc < 0) {
		struct nd_btt *nd_btt = FUNC9(btt_dev);

		FUNC5(btt_dev, &nd_btt->ndns);
		FUNC8(btt_dev);
	}

	return rc;
}