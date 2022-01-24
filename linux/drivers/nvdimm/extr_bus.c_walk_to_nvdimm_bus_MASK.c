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
struct nvdimm_bus {int dummy; } ;
struct device {struct device* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,int,char*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 struct nvdimm_bus* FUNC2 (struct device*) ; 

struct nvdimm_bus *FUNC3(struct device *nd_dev)
{
	struct device *dev;

	for (dev = nd_dev; dev; dev = dev->parent)
		if (FUNC1(dev))
			break;
	FUNC0(nd_dev, !dev, "invalid dev, not on nd bus\n");
	if (dev)
		return FUNC2(dev);
	return NULL;
}