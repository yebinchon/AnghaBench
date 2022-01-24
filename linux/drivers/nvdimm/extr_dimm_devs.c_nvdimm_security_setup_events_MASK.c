#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  overwrite_state; TYPE_2__* ops; int /*<<< orphan*/  flags; } ;
struct nvdimm {TYPE_3__ sec; } ;
struct TYPE_4__ {int /*<<< orphan*/  sd; } ;
struct device {TYPE_1__ kobj; } ;
struct TYPE_5__ {int /*<<< orphan*/  overwrite; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct device*,int /*<<< orphan*/ ,struct nvdimm*) ; 
 int /*<<< orphan*/  shutdown_security_notify ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct nvdimm* FUNC2 (struct device*) ; 

int FUNC3(struct device *dev)
{
	struct nvdimm *nvdimm = FUNC2(dev);

	if (!nvdimm->sec.flags || !nvdimm->sec.ops
			|| !nvdimm->sec.ops->overwrite)
		return 0;
	nvdimm->sec.overwrite_state = FUNC1(dev->kobj.sd, "security");
	if (!nvdimm->sec.overwrite_state)
		return -ENOMEM;

	return FUNC0(dev, shutdown_security_notify, nvdimm);
}