#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct fc_trace_hdr {int dummy; } ;
struct TYPE_5__ {scalar_t__ buffer; } ;
typedef  TYPE_1__ fnic_dbgfs_t ;
struct TYPE_6__ {int wr_idx; int rd_idx; scalar_t__* page_offset; } ;

/* Variables and functions */
 int FC_TRC_SIZE_BYTES ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct fc_trace_hdr*,TYPE_1__*,int*,int /*<<< orphan*/ ) ; 
 TYPE_3__ fc_trace_entries ; 
 int fc_trace_max_entries ; 
 int /*<<< orphan*/  fnic_fc_trace_lock ; 
 int fnic_fc_trace_max_pages ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (scalar_t__,int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(fnic_dbgfs_t *fnic_dbgfs_prt, u8 rdata_flag)
{
	int rd_idx, wr_idx;
	unsigned long flags;
	int len = 0, j;
	struct fc_trace_hdr *tdata;
	char *fc_trace;

	FUNC3(&fnic_fc_trace_lock, flags);
	if (fc_trace_entries.wr_idx == fc_trace_entries.rd_idx) {
		FUNC4(&fnic_fc_trace_lock, flags);
		FUNC1("fnic: Buffer is empty\n");
		return 0;
	}
	rd_idx = fc_trace_entries.rd_idx;
	wr_idx = fc_trace_entries.wr_idx;
	if (rdata_flag == 0) {
		len += FUNC2(fnic_dbgfs_prt->buffer + len,
			(fnic_fc_trace_max_pages * PAGE_SIZE * 3) - len,
			"Time Stamp (UTC)\t\t"
			"Host No:   F Type:  len:     FCoE_FRAME:\n");
	}

	while (rd_idx != wr_idx) {
		tdata = (struct fc_trace_hdr *)
			fc_trace_entries.page_offset[rd_idx];
		if (!tdata) {
			FUNC1("fnic: Rd data is NULL\n");
			FUNC4(&fnic_fc_trace_lock, flags);
			return 0;
		}
		if (rdata_flag == 0) {
			FUNC0(tdata,
				fnic_dbgfs_prt, &len, rdata_flag);
		} else {
			fc_trace = (char *)tdata;
			for (j = 0; j < FC_TRC_SIZE_BYTES; j++) {
				len += FUNC2(fnic_dbgfs_prt->buffer + len,
				(fnic_fc_trace_max_pages * PAGE_SIZE * 3)
				- len, "%02x", fc_trace[j] & 0xff);
			} /* for loop */
			len += FUNC2(fnic_dbgfs_prt->buffer + len,
				(fnic_fc_trace_max_pages * PAGE_SIZE * 3) - len,
				"\n");
		}
		rd_idx++;
		if (rd_idx > (fc_trace_max_entries - 1))
			rd_idx = 0;
	}

	FUNC4(&fnic_fc_trace_lock, flags);
	return len;
}