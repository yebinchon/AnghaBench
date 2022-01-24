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
struct TYPE_2__ {scalar_t__ handle; } ;
union atto_vda_req {TYPE_1__ scsi; } ;
struct esas2r_request {union atto_vda_req* vrq; struct esas2r_mem_desc* vrq_md; } ;
struct esas2r_mem_desc {scalar_t__ virt_addr; int /*<<< orphan*/  next_desc; scalar_t__ size; } ;
struct esas2r_adapter {scalar_t__ num_vrqs; int /*<<< orphan*/  vrq_mds_head; } ;

/* Variables and functions */
 scalar_t__ ESAS2R_DATA_BUF_LEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct esas2r_adapter*,struct esas2r_mem_desc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct esas2r_mem_desc*) ; 
 struct esas2r_mem_desc* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5(struct esas2r_adapter *a,
			  struct esas2r_request *rq)
{
	struct esas2r_mem_desc *memdesc = FUNC3(
		sizeof(struct esas2r_mem_desc), GFP_KERNEL);

	if (memdesc == NULL) {
		FUNC0("could not alloc mem for vda request memdesc\n");
		return false;
	}

	memdesc->size = sizeof(union atto_vda_req) +
			ESAS2R_DATA_BUF_LEN;

	if (!FUNC1(a, memdesc, 256)) {
		FUNC0("could not alloc mem for vda request\n");
		FUNC2(memdesc);
		return false;
	}

	a->num_vrqs++;
	FUNC4(&memdesc->next_desc, &a->vrq_mds_head);

	rq->vrq_md = memdesc;
	rq->vrq = (union atto_vda_req *)memdesc->virt_addr;
	rq->vrq->scsi.handle = a->num_vrqs;

	return true;
}