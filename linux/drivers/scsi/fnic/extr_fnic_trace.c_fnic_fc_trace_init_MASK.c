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
struct TYPE_2__ {unsigned long* page_offset; scalar_t__ wr_idx; scalar_t__ rd_idx; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long FC_TRC_SIZE_BYTES ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 TYPE_1__ fc_trace_entries ; 
 int fc_trace_max_entries ; 
 long fnic_fc_ctlr_trace_buf_p ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned long fnic_fc_trace_max_pages ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 unsigned long* FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(void)
{
	unsigned long fc_trace_buf_head;
	int err = 0;
	int i;

	fc_trace_max_entries = (fnic_fc_trace_max_pages * PAGE_SIZE)/
				FC_TRC_SIZE_BYTES;
	fnic_fc_ctlr_trace_buf_p =
		(unsigned long)FUNC6(FUNC0(PAGE_SIZE,
						  fnic_fc_trace_max_pages));
	if (!fnic_fc_ctlr_trace_buf_p) {
		FUNC3("fnic: Failed to allocate memory for "
		       "FC Control Trace Buf\n");
		err = -ENOMEM;
		goto err_fnic_fc_ctlr_trace_buf_init;
	}

	FUNC2((void *)fnic_fc_ctlr_trace_buf_p, 0,
			fnic_fc_trace_max_pages * PAGE_SIZE);

	/* Allocate memory for page offset */
	fc_trace_entries.page_offset =
		FUNC6(FUNC0(fc_trace_max_entries,
				   sizeof(unsigned long)));
	if (!fc_trace_entries.page_offset) {
		FUNC3("fnic:Failed to allocate memory for page_offset\n");
		if (fnic_fc_ctlr_trace_buf_p) {
			FUNC3("fnic: Freeing FC Control Trace Buf\n");
			FUNC5((void *)fnic_fc_ctlr_trace_buf_p);
			fnic_fc_ctlr_trace_buf_p = 0;
		}
		err = -ENOMEM;
		goto err_fnic_fc_ctlr_trace_buf_init;
	}
	FUNC2((void *)fc_trace_entries.page_offset, 0,
	       (fc_trace_max_entries * sizeof(unsigned long)));

	fc_trace_entries.rd_idx = fc_trace_entries.wr_idx = 0;
	fc_trace_buf_head = fnic_fc_ctlr_trace_buf_p;

	/*
	* Set up fc_trace_entries.page_offset field with memory location
	* for every trace entry
	*/
	for (i = 0; i < fc_trace_max_entries; i++) {
		fc_trace_entries.page_offset[i] = fc_trace_buf_head;
		fc_trace_buf_head += FC_TRC_SIZE_BYTES;
	}
	FUNC1();
	FUNC4("fnic: Successfully Initialized FC_CTLR Trace Buffer\n");
	return err;

err_fnic_fc_ctlr_trace_buf_init:
	return err;
}