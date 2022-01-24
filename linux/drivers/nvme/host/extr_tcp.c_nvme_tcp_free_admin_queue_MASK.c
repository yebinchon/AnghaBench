#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nvme_ctrl {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * pdu; } ;
struct TYPE_5__ {TYPE_1__ async_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_ctrl*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (struct nvme_ctrl*) ; 

__attribute__((used)) static void FUNC3(struct nvme_ctrl *ctrl)
{
	if (FUNC2(ctrl)->async_req.pdu) {
		FUNC0(FUNC2(ctrl));
		FUNC2(ctrl)->async_req.pdu = NULL;
	}

	FUNC1(ctrl, 0);
}