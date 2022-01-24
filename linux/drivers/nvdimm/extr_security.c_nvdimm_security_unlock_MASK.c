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
struct nvdimm {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nvdimm*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct nvdimm* FUNC3 (struct device*) ; 

int FUNC4(struct device *dev)
{
	struct nvdimm *nvdimm = FUNC3(dev);
	int rc;

	FUNC1(dev);
	rc = FUNC0(nvdimm);
	FUNC2(dev);
	return rc;
}