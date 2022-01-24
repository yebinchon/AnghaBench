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
struct nvdimm_drvdata {int /*<<< orphan*/  ns_current; } ;
struct nd_region {struct nd_mapping* mapping; scalar_t__ ndr_mappings; struct nd_interleave_set* nd_set; } ;
struct nd_namespace_index {int dummy; } ;
struct nd_mapping {int dummy; } ;
struct nd_interleave_set {int /*<<< orphan*/  cookie1; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ ENXIO ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct nd_region*,struct nd_namespace_index*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 scalar_t__ FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 struct nd_namespace_index* FUNC7 (struct nvdimm_drvdata*,int /*<<< orphan*/ ) ; 
 struct nd_region* FUNC8 (struct device*) ; 
 struct nvdimm_drvdata* FUNC9 (struct nd_mapping*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct nd_region *nd_region = FUNC8(dev);
	struct nd_interleave_set *nd_set = nd_region->nd_set;
	ssize_t rc = 0;

	if (FUNC0(dev) && nd_set)
		/* pass, should be precluded by region_visible */;
	else
		return -ENXIO;

	/*
	 * The cookie to show depends on which specification of the
	 * labels we are using. If there are not labels then default to
	 * the v1.1 namespace label cookie definition. To read all this
	 * data we need to wait for probing to settle.
	 */
	FUNC1(dev);
	FUNC4(dev);
	FUNC10(dev);
	if (nd_region->ndr_mappings) {
		struct nd_mapping *nd_mapping = &nd_region->mapping[0];
		struct nvdimm_drvdata *ndd = FUNC9(nd_mapping);

		if (ndd) {
			struct nd_namespace_index *nsindex;

			nsindex = FUNC7(ndd, ndd->ns_current);
			rc = FUNC6(buf, "%#llx\n",
					FUNC3(nd_region,
						nsindex));
		}
	}
	FUNC5(dev);
	FUNC2(dev);

	if (rc)
		return rc;
	return FUNC6(buf, "%#llx\n", nd_set->cookie1);
}