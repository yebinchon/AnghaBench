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
struct nvme_ctrl {int queue_count; scalar_t__ kato; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvme_ctrl*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_ctrl*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_ctrl*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_ctrl*) ; 

void FUNC4(struct nvme_ctrl *ctrl)
{
	if (ctrl->kato)
		FUNC2(ctrl);

	FUNC0(ctrl);

	if (ctrl->queue_count > 1) {
		FUNC1(ctrl);
		FUNC3(ctrl);
	}
}