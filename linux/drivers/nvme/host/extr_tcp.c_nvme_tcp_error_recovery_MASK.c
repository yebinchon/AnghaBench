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
struct nvme_ctrl {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  err_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_CTRL_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (struct nvme_ctrl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvme_wq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (struct nvme_ctrl*) ; 

__attribute__((used)) static void FUNC3(struct nvme_ctrl *ctrl)
{
	if (!FUNC0(ctrl, NVME_CTRL_RESETTING))
		return;

	FUNC1(nvme_wq, &FUNC2(ctrl)->err_work);
}