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
struct nvmet_port {int dummy; } ;
struct nvmet_ctrl {struct nvmet_port* port; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_AEN_BIT_DISC_CHANGE ; 
 int /*<<< orphan*/  NVME_AER_NOTICE_DISC_CHANGED ; 
 int /*<<< orphan*/  NVME_AER_TYPE_NOTICE ; 
 int /*<<< orphan*/  NVME_LOG_DISC ; 
 int /*<<< orphan*/  FUNC0 (struct nvmet_ctrl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct nvmet_ctrl*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct nvmet_port *port,
				 struct nvmet_ctrl *ctrl)
{
	if (ctrl->port != port)
		return;

	if (FUNC1(ctrl, NVME_AEN_BIT_DISC_CHANGE))
		return;

	FUNC0(ctrl, NVME_AER_TYPE_NOTICE,
			      NVME_AER_NOTICE_DISC_CHANGED, NVME_LOG_DISC);
}