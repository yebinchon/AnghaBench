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
struct nvdimm {int /*<<< orphan*/  flags; int /*<<< orphan*/  cmd_mask; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOTTY ; 
 int ENXIO ; 
 int /*<<< orphan*/  NDD_ALIASING ; 
 int /*<<< orphan*/  ND_CMD_GET_CONFIG_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nvdimm* FUNC1 (struct device*) ; 

int FUNC2(struct device *dev)
{
	struct nvdimm *nvdimm = FUNC1(dev);

	if (!nvdimm->cmd_mask ||
	    !FUNC0(ND_CMD_GET_CONFIG_DATA, &nvdimm->cmd_mask)) {
		if (FUNC0(NDD_ALIASING, &nvdimm->flags))
			return -ENXIO;
		else
			return -ENOTTY;
	}

	return 0;
}