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
struct scb {int dummy; } ;
struct TYPE_4__ {int size; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  dma_handle; } ;
struct asd_seq_data {int tc_index_bitmap_bits; int /*<<< orphan*/  pend_q; int /*<<< orphan*/  pend_q_lock; scalar_t__ pending; int /*<<< orphan*/ * tc_index_array; int /*<<< orphan*/ * tc_index_bitmap; TYPE_2__ next_scb; int /*<<< orphan*/  tc_index_lock; } ;
struct TYPE_3__ {int max_scbs; } ;
struct asd_ha_struct {struct asd_seq_data seq; int /*<<< orphan*/  scb_pool; TYPE_1__ hw_prof; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct asd_ha_struct *asd_ha)
{
	struct asd_seq_data *seq = &asd_ha->seq;
	int bitmap_bytes;

	/* allocate the index array and bitmap */
	asd_ha->seq.tc_index_bitmap_bits = asd_ha->hw_prof.max_scbs;
	asd_ha->seq.tc_index_array = FUNC3(asd_ha->seq.tc_index_bitmap_bits,
					     sizeof(void *),
					     GFP_KERNEL);
	if (!asd_ha->seq.tc_index_array)
		return -ENOMEM;

	bitmap_bytes = (asd_ha->seq.tc_index_bitmap_bits+7)/8;
	bitmap_bytes = FUNC0(bitmap_bytes*8)*sizeof(unsigned long);
	asd_ha->seq.tc_index_bitmap = FUNC5(bitmap_bytes, GFP_KERNEL);
	if (!asd_ha->seq.tc_index_bitmap) {
		FUNC4(asd_ha->seq.tc_index_array);
		asd_ha->seq.tc_index_array = NULL;
		return -ENOMEM;
	}

	FUNC6(&seq->tc_index_lock);

	seq->next_scb.size = sizeof(struct scb);
	seq->next_scb.vaddr = FUNC2(asd_ha->scb_pool, GFP_KERNEL,
					     &seq->next_scb.dma_handle);
	if (!seq->next_scb.vaddr) {
		FUNC4(asd_ha->seq.tc_index_bitmap);
		FUNC4(asd_ha->seq.tc_index_array);
		asd_ha->seq.tc_index_bitmap = NULL;
		asd_ha->seq.tc_index_array = NULL;
		return -ENOMEM;
	}

	seq->pending = 0;
	FUNC6(&seq->pend_q_lock);
	FUNC1(&seq->pend_q);

	return 0;
}