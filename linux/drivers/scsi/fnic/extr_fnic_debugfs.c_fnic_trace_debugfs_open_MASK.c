#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct inode {scalar_t__ i_private; } ;
struct file {TYPE_1__* private_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  buffer_len; void* buffer; } ;
typedef  TYPE_1__ fnic_dbgfs_t ;
struct TYPE_8__ {scalar_t__ fnic_trace; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 TYPE_6__* fc_trc_flag ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int fnic_fc_trace_max_pages ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int) ; 
 int trace_max_pages ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct inode *inode,
				  struct file *file)
{
	fnic_dbgfs_t *fnic_dbg_prt;
	u8 *rdata_ptr;
	rdata_ptr = (u8 *)inode->i_private;
	fnic_dbg_prt = FUNC4(sizeof(fnic_dbgfs_t), GFP_KERNEL);
	if (!fnic_dbg_prt)
		return -ENOMEM;

	if (*rdata_ptr == fc_trc_flag->fnic_trace) {
		fnic_dbg_prt->buffer = FUNC6(FUNC0(3, trace_max_pages,
							   PAGE_SIZE));
		if (!fnic_dbg_prt->buffer) {
			FUNC3(fnic_dbg_prt);
			return -ENOMEM;
		}
		FUNC5((void *)fnic_dbg_prt->buffer, 0,
		3 * (trace_max_pages * PAGE_SIZE));
		fnic_dbg_prt->buffer_len = FUNC2(fnic_dbg_prt);
	} else {
		fnic_dbg_prt->buffer =
			FUNC6(FUNC0(3, fnic_fc_trace_max_pages,
					    PAGE_SIZE));
		if (!fnic_dbg_prt->buffer) {
			FUNC3(fnic_dbg_prt);
			return -ENOMEM;
		}
		FUNC5((void *)fnic_dbg_prt->buffer, 0,
			3 * (fnic_fc_trace_max_pages * PAGE_SIZE));
		fnic_dbg_prt->buffer_len =
			FUNC1(fnic_dbg_prt, *rdata_ptr);
	}
	file->private_data = fnic_dbg_prt;

	return 0;
}