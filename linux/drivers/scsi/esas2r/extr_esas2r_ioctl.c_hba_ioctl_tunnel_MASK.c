#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct esas2r_sg_context {int /*<<< orphan*/  length; } ;
struct esas2r_request {TYPE_2__* vrq; } ;
struct esas2r_adapter {int dummy; } ;
struct atto_ioctl {int /*<<< orphan*/  status; } ;
struct TYPE_3__ {int /*<<< orphan*/  sge; } ;
struct TYPE_4__ {TYPE_1__ ioctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTO_STS_OUT_OF_RSRC ; 
 int /*<<< orphan*/  VDA_IOCTL_HBA ; 
 int /*<<< orphan*/  FUNC0 (struct esas2r_adapter*,struct esas2r_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct esas2r_adapter*,struct esas2r_request*,struct esas2r_sg_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct esas2r_sg_context*,struct esas2r_adapter*,struct esas2r_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct esas2r_adapter*,struct esas2r_request*) ; 

__attribute__((used)) static bool FUNC4(struct esas2r_adapter *a,
			     struct atto_ioctl *hi,
			     struct esas2r_request *rq,
			     struct esas2r_sg_context *sgc)
{
	FUNC2(sgc, a, rq, rq->vrq->ioctl.sge);

	FUNC0(a, rq, sgc->length, VDA_IOCTL_HBA);

	if (!FUNC1(a, rq, sgc)) {
		hi->status = ATTO_STS_OUT_OF_RSRC;

		return false;
	}

	FUNC3(a, rq);

	return true;
}