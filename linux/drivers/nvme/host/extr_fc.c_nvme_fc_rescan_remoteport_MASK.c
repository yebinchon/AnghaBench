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
struct nvme_fc_rport {int /*<<< orphan*/  lport; } ;
struct nvme_fc_remote_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct nvme_fc_rport*) ; 
 struct nvme_fc_rport* FUNC1 (struct nvme_fc_remote_port*) ; 

void
FUNC2(struct nvme_fc_remote_port *remoteport)
{
	struct nvme_fc_rport *rport = FUNC1(remoteport);

	FUNC0(rport->lport, rport);
}