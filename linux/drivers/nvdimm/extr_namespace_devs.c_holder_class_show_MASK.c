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
struct nd_namespace_common {scalar_t__ claim_class; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ NVDIMM_CCLASS_BTT ; 
 scalar_t__ NVDIMM_CCLASS_BTT2 ; 
 scalar_t__ NVDIMM_CCLASS_DAX ; 
 scalar_t__ NVDIMM_CCLASS_NONE ; 
 scalar_t__ NVDIMM_CCLASS_PFN ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 struct nd_namespace_common* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct nd_namespace_common *ndns = FUNC3(dev);
	ssize_t rc;

	FUNC0(dev);
	if (ndns->claim_class == NVDIMM_CCLASS_NONE)
		rc = FUNC2(buf, "\n");
	else if ((ndns->claim_class == NVDIMM_CCLASS_BTT) ||
			(ndns->claim_class == NVDIMM_CCLASS_BTT2))
		rc = FUNC2(buf, "btt\n");
	else if (ndns->claim_class == NVDIMM_CCLASS_PFN)
		rc = FUNC2(buf, "pfn\n");
	else if (ndns->claim_class == NVDIMM_CCLASS_DAX)
		rc = FUNC2(buf, "dax\n");
	else
		rc = FUNC2(buf, "<unknown>\n");
	FUNC1(dev);

	return rc;
}