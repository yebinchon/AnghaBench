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
struct nvdimm {int /*<<< orphan*/  dev; } ;
struct nd_region {int ndr_mappings; struct nd_mapping* mapping; } ;
struct nd_mapping {int /*<<< orphan*/  position; int /*<<< orphan*/  size; int /*<<< orphan*/  start; struct nvdimm* nvdimm; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nd_region* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, char *buf, int n)
{
	struct nd_region *nd_region = FUNC2(dev);
	struct nd_mapping *nd_mapping;
	struct nvdimm *nvdimm;

	if (n >= nd_region->ndr_mappings)
		return -ENXIO;
	nd_mapping = &nd_region->mapping[n];
	nvdimm = nd_mapping->nvdimm;

	return FUNC1(buf, "%s,%llu,%llu,%d\n", FUNC0(&nvdimm->dev),
			nd_mapping->start, nd_mapping->size,
			nd_mapping->position);
}