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
struct nvme_ctrl {int dummy; } ;
struct nvme_fc_ctrl {struct nvme_ctrl ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_fc_ctrl*) ; 
 struct nvme_fc_ctrl* FUNC2 (struct nvme_ctrl*) ; 

__attribute__((used)) static void
FUNC3(struct nvme_ctrl *nctrl)
{
	struct nvme_fc_ctrl *ctrl = FUNC2(nctrl);

	FUNC0(nctrl != &ctrl->ctrl);

	FUNC1(ctrl);
}