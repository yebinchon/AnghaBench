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
struct nvme_subsystem {int /*<<< orphan*/  subnqn; } ;
struct nvme_id_ctrl {int /*<<< orphan*/  mn; int /*<<< orphan*/  sn; int /*<<< orphan*/  vid; int /*<<< orphan*/  ssvid; int /*<<< orphan*/  subnqn; } ;
struct nvme_ctrl {int quirks; scalar_t__ vs; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int NVME_QUIRK_IGNORE_DEV_SUBNQN ; 
 scalar_t__ FUNC0 (int,int,int) ; 
 size_t NVMF_NQN_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,size_t,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC7 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC8(struct nvme_subsystem *subsys, struct nvme_ctrl *ctrl,
		struct nvme_id_ctrl *id)
{
	size_t nqnlen;
	int off;

	if(!(ctrl->quirks & NVME_QUIRK_IGNORE_DEV_SUBNQN)) {
		nqnlen = FUNC7(id->subnqn, NVMF_NQN_SIZE);
		if (nqnlen > 0 && nqnlen < NVMF_NQN_SIZE) {
			FUNC6(subsys->subnqn, id->subnqn, NVMF_NQN_SIZE);
			return;
		}

		if (ctrl->vs >= FUNC0(1, 2, 1))
			FUNC1(ctrl->device, "missing or invalid SUBNQN field.\n");
	}

	/* Generate a "fake" NQN per Figure 254 in NVMe 1.3 + ECN 001 */
	off = FUNC5(subsys->subnqn, NVMF_NQN_SIZE,
			"nqn.2014.08.org.nvmexpress:%04x%04x",
			FUNC2(id->vid), FUNC2(id->ssvid));
	FUNC3(subsys->subnqn + off, id->sn, sizeof(id->sn));
	off += sizeof(id->sn);
	FUNC3(subsys->subnqn + off, id->mn, sizeof(id->mn));
	off += sizeof(id->mn);
	FUNC4(subsys->subnqn + off, 0, sizeof(subsys->subnqn) - off);
}