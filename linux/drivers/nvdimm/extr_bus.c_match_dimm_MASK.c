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
struct nvdimm {long id; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 struct nvdimm* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, void *data)
{
	long id = (long) data;

	if (FUNC0(dev)) {
		struct nvdimm *nvdimm = FUNC1(dev);

		return nvdimm->id == id;
	}

	return 0;
}