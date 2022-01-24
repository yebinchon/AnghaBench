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
struct switchtec_ntb {int /*<<< orphan*/  mmio_self_ctrl; TYPE_1__* mmio_ntb; } ;
struct TYPE_2__ {int /*<<< orphan*/  requester_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int FUNC1 (struct switchtec_ntb*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct switchtec_ntb *sndev)
{
	int req_ids[2];

	/*
	 * Root Complex Requester ID (which is 0:00.0)
	 */
	req_ids[0] = 0;

	/*
	 * Host Bridge Requester ID (as read from the mmap address)
	 */
	req_ids[1] = FUNC2(&sndev->mmio_ntb->requester_id);

	return FUNC1(sndev, sndev->mmio_self_ctrl, req_ids,
				   FUNC0(req_ids));
}