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
struct nvme_id_ctrl {int dummy; } ;
struct nvme_ctrl {int /*<<< orphan*/  admin_q; } ;
struct TYPE_2__ {int /*<<< orphan*/  cns; int /*<<< orphan*/  opcode; } ;
struct nvme_command {TYPE_1__ identify; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NVME_ID_CNS_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct nvme_id_ctrl*) ; 
 struct nvme_id_ctrl* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvme_admin_identify ; 
 int FUNC2 (int /*<<< orphan*/ ,struct nvme_command*,struct nvme_id_ctrl*,int) ; 

__attribute__((used)) static int FUNC3(struct nvme_ctrl *dev, struct nvme_id_ctrl **id)
{
	struct nvme_command c = { };
	int error;

	/* gcc-4.4.4 (at least) has issues with initializers and anon unions */
	c.identify.opcode = nvme_admin_identify;
	c.identify.cns = NVME_ID_CNS_CTRL;

	*id = FUNC1(sizeof(struct nvme_id_ctrl), GFP_KERNEL);
	if (!*id)
		return -ENOMEM;

	error = FUNC2(dev->admin_q, &c, *id,
			sizeof(struct nvme_id_ctrl));
	if (error)
		FUNC0(*id);
	return error;
}