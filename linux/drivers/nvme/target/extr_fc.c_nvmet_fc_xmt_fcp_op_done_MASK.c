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
struct nvmet_fc_fcp_iod {int dummy; } ;
struct nvmefc_tgt_fcp_req {struct nvmet_fc_fcp_iod* nvmet_fc_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvmet_fc_fcp_iod*) ; 

__attribute__((used)) static void
FUNC1(struct nvmefc_tgt_fcp_req *fcpreq)
{
	struct nvmet_fc_fcp_iod *fod = fcpreq->nvmet_fc_private;

	FUNC0(fod);
}