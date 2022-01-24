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
struct nvmefc_ls_req_op {int dummy; } ;
struct nvme_fc_rport {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nvme_fc_rport*,struct nvmefc_ls_req_op*,void (*) (struct nvmefc_ls_req*,int)) ; 

__attribute__((used)) static int
FUNC1(struct nvme_fc_rport *rport,
		struct nvmefc_ls_req_op *lsop,
		void (*done)(struct nvmefc_ls_req *req, int status))
{
	/* don't wait for completion */

	return FUNC0(rport, lsop, done);
}