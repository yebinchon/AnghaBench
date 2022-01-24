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
struct rdma_cm_id {int dummy; } ;
struct nvme_rdma_cm_rej {void* sts; void* recfmt; } ;
typedef  int /*<<< orphan*/  rej ;
typedef  enum nvme_rdma_cm_status { ____Placeholder_nvme_rdma_cm_status } nvme_rdma_cm_status ;

/* Variables and functions */
 int NVME_RDMA_CM_FMT_1_0 ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rdma_cm_id*,void*,int) ; 

__attribute__((used)) static int FUNC4(struct rdma_cm_id *cm_id,
				enum nvme_rdma_cm_status status)
{
	struct nvme_rdma_cm_rej rej;

	FUNC2("rejecting connect request: status %d (%s)\n",
		 status, FUNC1(status));

	rej.recfmt = FUNC0(NVME_RDMA_CM_FMT_1_0);
	rej.sts = FUNC0(status);

	return FUNC3(cm_id, (void *)&rej, sizeof(rej));
}