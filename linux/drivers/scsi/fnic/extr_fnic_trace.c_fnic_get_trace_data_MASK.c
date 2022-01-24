#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct timespec64 {int /*<<< orphan*/  tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_8__ {int /*<<< orphan*/  val; int /*<<< orphan*/  low; } ;
struct TYPE_7__ {int /*<<< orphan*/  val; int /*<<< orphan*/  low; } ;
struct TYPE_9__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  tag; int /*<<< orphan*/  host_no; TYPE_2__ timestamp; TYPE_1__ fnaddr; } ;
typedef  TYPE_3__ fnic_trace_data_t ;
struct TYPE_10__ {scalar_t__ buffer; } ;
typedef  TYPE_4__ fnic_dbgfs_t ;
struct TYPE_11__ {int rd_idx; int wr_idx; scalar_t__* page_offset; } ;

/* Variables and functions */
 int KSYM_SYMBOL_LEN ; 
 int PAGE_SIZE ; 
 int fnic_max_trace_entries ; 
 TYPE_5__ fnic_trace_entries ; 
 int /*<<< orphan*/  fnic_trace_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timespec64*) ; 
 scalar_t__ FUNC1 (scalar_t__,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int trace_max_pages ; 

int FUNC5(fnic_dbgfs_t *fnic_dbgfs_prt)
{
	int rd_idx;
	int wr_idx;
	int len = 0;
	unsigned long flags;
	char str[KSYM_SYMBOL_LEN];
	struct timespec64 val;
	fnic_trace_data_t *tbp;

	FUNC2(&fnic_trace_lock, flags);
	rd_idx = fnic_trace_entries.rd_idx;
	wr_idx = fnic_trace_entries.wr_idx;
	if (wr_idx < rd_idx) {
		while (1) {
			/* Start from read index @rd_idx */
			tbp = (fnic_trace_data_t *)
				  fnic_trace_entries.page_offset[rd_idx];
			if (!tbp) {
				FUNC3(&fnic_trace_lock, flags);
				return 0;
			}
			/* Convert function pointer to function name */
			if (sizeof(unsigned long) < 8) {
				FUNC4(str, tbp->fnaddr.low);
				FUNC0(tbp->timestamp.low, &val);
			} else {
				FUNC4(str, tbp->fnaddr.val);
				FUNC0(tbp->timestamp.val, &val);
			}
			/*
			 * Dump trace buffer entry to memory file
			 * and increment read index @rd_idx
			 */
			len += FUNC1(fnic_dbgfs_prt->buffer + len,
				  (trace_max_pages * PAGE_SIZE * 3) - len,
				  "%16llu.%09lu %-50s %8x %8x %16llx %16llx "
				  "%16llx %16llx %16llx\n", (u64)val.tv_sec,
				  val.tv_nsec, str, tbp->host_no, tbp->tag,
				  tbp->data[0], tbp->data[1], tbp->data[2],
				  tbp->data[3], tbp->data[4]);
			rd_idx++;
			/*
			 * If rd_idx is reached to maximum trace entries
			 * then move rd_idx to zero
			 */
			if (rd_idx > (fnic_max_trace_entries-1))
				rd_idx = 0;
			/*
			 * Continure dumpping trace buffer entries into
			 * memory file till rd_idx reaches write index
			 */
			if (rd_idx == wr_idx)
				break;
		}
	} else if (wr_idx > rd_idx) {
		while (1) {
			/* Start from read index @rd_idx */
			tbp = (fnic_trace_data_t *)
				  fnic_trace_entries.page_offset[rd_idx];
			if (!tbp) {
				FUNC3(&fnic_trace_lock, flags);
				return 0;
			}
			/* Convert function pointer to function name */
			if (sizeof(unsigned long) < 8) {
				FUNC4(str, tbp->fnaddr.low);
				FUNC0(tbp->timestamp.low, &val);
			} else {
				FUNC4(str, tbp->fnaddr.val);
				FUNC0(tbp->timestamp.val, &val);
			}
			/*
			 * Dump trace buffer entry to memory file
			 * and increment read index @rd_idx
			 */
			len += FUNC1(fnic_dbgfs_prt->buffer + len,
				  (trace_max_pages * PAGE_SIZE * 3) - len,
				  "%16llu.%09lu %-50s %8x %8x %16llx %16llx "
				  "%16llx %16llx %16llx\n", (u64)val.tv_sec,
				  val.tv_nsec, str, tbp->host_no, tbp->tag,
				  tbp->data[0], tbp->data[1], tbp->data[2],
				  tbp->data[3], tbp->data[4]);
			rd_idx++;
			/*
			 * Continue dumpping trace buffer entries into
			 * memory file till rd_idx reaches write index
			 */
			if (rd_idx == wr_idx)
				break;
		}
	}
	FUNC3(&fnic_trace_lock, flags);
	return len;
}