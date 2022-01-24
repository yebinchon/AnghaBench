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
struct sg_el {scalar_t__ flags; } ;
struct empty_scb {scalar_t__ num_valid; struct sg_el* eb; } ;
struct asd_seq_data {struct asd_dma_tok** edb_arr; } ;
struct asd_dma_tok {int /*<<< orphan*/  vaddr; } ;
struct asd_ascb {int edb_index; TYPE_2__* ha; int /*<<< orphan*/  list; TYPE_1__* scb; } ;
struct TYPE_4__ {struct asd_seq_data seq; } ;
struct TYPE_3__ {struct empty_scb escb; } ;

/* Variables and functions */
 int ASD_EDBS_PER_SCB ; 
 int /*<<< orphan*/  ASD_EDB_SIZE ; 
 scalar_t__ ELEMENT_NOT_VALID ; 
 int FUNC0 (TYPE_2__*,struct asd_ascb*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct asd_ascb *ascb, int edb_id)
{
	struct asd_seq_data *seq = &ascb->ha->seq;
	struct empty_scb *escb = &ascb->scb->escb;
	struct sg_el     *eb   = &escb->eb[edb_id];
	struct asd_dma_tok *edb = seq->edb_arr[ascb->edb_index + edb_id];

	FUNC4(edb->vaddr, 0, ASD_EDB_SIZE);
	eb->flags |= ELEMENT_NOT_VALID;
	escb->num_valid--;

	if (escb->num_valid == 0) {
		int i;
		/* ASD_DPRINTK("reposting escb: vaddr: 0x%p, "
			    "dma_handle: 0x%08llx, next: 0x%08llx, "
			    "index:%d, opcode:0x%02x\n",
			    ascb->dma_scb.vaddr,
			    (u64)ascb->dma_scb.dma_handle,
			    le64_to_cpu(ascb->scb->header.next_scb),
			    le16_to_cpu(ascb->scb->header.index),
			    ascb->scb->header.opcode);
		*/
		escb->num_valid = ASD_EDBS_PER_SCB;
		for (i = 0; i < ASD_EDBS_PER_SCB; i++)
			escb->eb[i].flags = 0;
		if (!FUNC3(&ascb->list))
			FUNC2(&ascb->list);
		i = FUNC0(ascb->ha, ascb, 1);
		if (i)
			FUNC1("couldn't post escb, err:%d\n", i);
	}
}