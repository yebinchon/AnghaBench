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
struct nvme_ctrl {int /*<<< orphan*/  admin_tagset; int /*<<< orphan*/  fabrics_q; int /*<<< orphan*/  admin_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_ctrl*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_ctrl*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct nvme_ctrl *ctrl, bool remove)
{
	FUNC3(ctrl, 0);
	if (remove) {
		FUNC0(ctrl->admin_q);
		FUNC0(ctrl->fabrics_q);
		FUNC1(ctrl->admin_tagset);
	}
	FUNC2(ctrl);
}