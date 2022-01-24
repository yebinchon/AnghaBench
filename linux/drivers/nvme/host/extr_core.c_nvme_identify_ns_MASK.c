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
struct nvme_id_ns {int dummy; } ;
struct nvme_ctrl {int /*<<< orphan*/  device; int /*<<< orphan*/  admin_q; } ;
struct TYPE_2__ {int /*<<< orphan*/  cns; int /*<<< orphan*/  nsid; int /*<<< orphan*/  opcode; } ;
struct nvme_command {TYPE_1__ identify; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NVME_ID_CNS_NS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_id_ns*) ; 
 struct nvme_id_ns* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvme_admin_identify ; 
 int FUNC4 (int /*<<< orphan*/ ,struct nvme_command*,struct nvme_id_ns*,int) ; 

__attribute__((used)) static int FUNC5(struct nvme_ctrl *ctrl,
		unsigned nsid, struct nvme_id_ns **id)
{
	struct nvme_command c = { };
	int error;

	/* gcc-4.4.4 (at least) has issues with initializers and anon unions */
	c.identify.opcode = nvme_admin_identify;
	c.identify.nsid = FUNC0(nsid);
	c.identify.cns = NVME_ID_CNS_NS;

	*id = FUNC3(sizeof(**id), GFP_KERNEL);
	if (!*id)
		return -ENOMEM;

	error = FUNC4(ctrl->admin_q, &c, *id, sizeof(**id));
	if (error) {
		FUNC1(ctrl->device, "Identify namespace failed (%d)\n", error);
		FUNC2(*id);
	}

	return error;
}