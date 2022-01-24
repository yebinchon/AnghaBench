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
struct nd_region {int ndr_mappings; struct nd_mapping* mapping; } ;
struct nd_mapping {int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct device** FUNC2 (struct nd_region*) ; 

__attribute__((used)) static struct device **FUNC3(struct nd_region *nd_region)
{
	struct nd_mapping *nd_mapping;
	struct device **devs;
	int i;

	if (nd_region->ndr_mappings == 0)
		return NULL;

	/* lock down all mappings while we scan labels */
	for (i = 0; i < nd_region->ndr_mappings; i++) {
		nd_mapping = &nd_region->mapping[i];
		FUNC0(&nd_mapping->lock, i);
	}

	devs = FUNC2(nd_region);

	for (i = 0; i < nd_region->ndr_mappings; i++) {
		int reverse = nd_region->ndr_mappings - 1 - i;

		nd_mapping = &nd_region->mapping[reverse];
		FUNC1(&nd_mapping->lock);
	}

	return devs;
}