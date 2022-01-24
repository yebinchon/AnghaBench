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
struct nd_namespace_common {scalar_t__ claim_class; scalar_t__ claim; } ;
struct device {scalar_t__ driver; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ EBUSY ; 
 scalar_t__ EINVAL ; 
 scalar_t__ NVDIMM_CCLASS_DAX ; 
 scalar_t__ NVDIMM_CCLASS_NONE ; 
 scalar_t__ NVDIMM_CCLASS_PFN ; 
 scalar_t__ FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 struct nd_namespace_common* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, const char *buf)
{
	struct nd_namespace_common *ndns = FUNC2(dev);

	if (dev->driver || ndns->claim)
		return -EBUSY;

	if (FUNC1(buf, "btt"))
		ndns->claim_class = FUNC0(dev);
	else if (FUNC1(buf, "pfn"))
		ndns->claim_class = NVDIMM_CCLASS_PFN;
	else if (FUNC1(buf, "dax"))
		ndns->claim_class = NVDIMM_CCLASS_DAX;
	else if (FUNC1(buf, ""))
		ndns->claim_class = NVDIMM_CCLASS_NONE;
	else
		return -EINVAL;

	/* btt_claim_class() could've returned an error */
	if (ndns->claim_class < 0)
		return ndns->claim_class;

	return 0;
}