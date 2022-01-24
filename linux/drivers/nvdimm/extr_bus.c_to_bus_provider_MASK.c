#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nvdimm_bus {TYPE_1__* nd_desc; } ;
struct module {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct module* module; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 struct nvdimm_bus* FUNC1 (struct device*) ; 

__attribute__((used)) static struct module *FUNC2(struct device *dev)
{
	/* pin bus providers while regions are enabled */
	if (FUNC0(dev)) {
		struct nvdimm_bus *nvdimm_bus = FUNC1(dev);

		return nvdimm_bus->nd_desc->module;
	}
	return NULL;
}