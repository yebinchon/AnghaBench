#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct esas2r_request {int vda_req_sz; TYPE_4__* vrq; TYPE_2__* vrq_md; int /*<<< orphan*/  req_stat; } ;
struct esas2r_inbound_list_source_entry {int /*<<< orphan*/  length; int /*<<< orphan*/  address; } ;
struct TYPE_5__ {scalar_t__ virt_addr; } ;
struct esas2r_adapter {scalar_t__ last_write; scalar_t__ list_size; int max_vdareq_size; int /*<<< orphan*/  flags; TYPE_1__ inbound_list_md; } ;
struct TYPE_7__ {int handle; } ;
struct TYPE_8__ {TYPE_3__ scsi; } ;
struct TYPE_6__ {int /*<<< orphan*/  phys_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_COMM_LIST_TOGGLE ; 
 int MU_ILW_TOGGLE ; 
 int /*<<< orphan*/  MU_IN_LIST_WRITE ; 
 int RQ_SIZE_DEFAULT ; 
 int /*<<< orphan*/  RS_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct esas2r_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct esas2r_adapter *a,
			      struct esas2r_request *rq)
{
	struct esas2r_inbound_list_source_entry *element;
	u32 dw;

	rq->req_stat = RS_STARTED;
	/*
	 * Calculate the inbound list entry location and the current state of
	 * toggle bit.
	 */
	a->last_write++;
	if (a->last_write >= a->list_size) {
		a->last_write = 0;
		/* update the toggle bit */
		if (FUNC6(AF_COMM_LIST_TOGGLE, &a->flags))
			FUNC0(AF_COMM_LIST_TOGGLE, &a->flags);
		else
			FUNC5(AF_COMM_LIST_TOGGLE, &a->flags);
	}

	element =
		(struct esas2r_inbound_list_source_entry *)a->inbound_list_md.
		virt_addr
		+ a->last_write;

	/* Set the VDA request size if it was never modified */
	if (rq->vda_req_sz == RQ_SIZE_DEFAULT)
		rq->vda_req_sz = (u16)(a->max_vdareq_size / sizeof(u32));

	element->address = FUNC2(rq->vrq_md->phys_addr);
	element->length = FUNC1(rq->vda_req_sz);

	/* Update the write pointer */
	dw = a->last_write;

	if (FUNC6(AF_COMM_LIST_TOGGLE, &a->flags))
		dw |= MU_ILW_TOGGLE;

	FUNC3("rq->vrq->scsi.handle:%x", rq->vrq->scsi.handle);
	FUNC3("dw:%x", dw);
	FUNC3("rq->vda_req_sz:%x", rq->vda_req_sz);
	FUNC4(a, MU_IN_LIST_WRITE, dw);
}