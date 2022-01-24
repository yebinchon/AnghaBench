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
struct nvmet_fc_target_port {int dummy; } ;
struct nvmefc_tgt_fcp_req {int dummy; } ;
struct fcloop_fcpreq {int /*<<< orphan*/  tio_done_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct fcloop_fcpreq* FUNC1 (struct nvmefc_tgt_fcp_req*) ; 

__attribute__((used)) static void
FUNC2(struct nvmet_fc_target_port *tgtport,
			struct nvmefc_tgt_fcp_req *tgt_fcpreq)
{
	struct fcloop_fcpreq *tfcp_req = FUNC1(tgt_fcpreq);

	FUNC0(&tfcp_req->tio_done_work);
}