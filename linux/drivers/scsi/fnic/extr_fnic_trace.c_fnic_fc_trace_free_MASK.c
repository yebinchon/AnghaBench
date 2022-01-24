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
struct TYPE_2__ {int /*<<< orphan*/ * page_offset; } ;

/* Variables and functions */
 TYPE_1__ fc_trace_entries ; 
 scalar_t__ fnic_fc_ctlr_trace_buf_p ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ fnic_fc_tracing_enabled ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

void FUNC3(void)
{
	fnic_fc_tracing_enabled = 0;
	FUNC0();
	if (fc_trace_entries.page_offset) {
		FUNC2((void *)fc_trace_entries.page_offset);
		fc_trace_entries.page_offset = NULL;
	}
	if (fnic_fc_ctlr_trace_buf_p) {
		FUNC2((void *)fnic_fc_ctlr_trace_buf_p);
		fnic_fc_ctlr_trace_buf_p = 0;
	}
	FUNC1("fnic:Successfully FC_CTLR Freed Trace Buffer\n");
}