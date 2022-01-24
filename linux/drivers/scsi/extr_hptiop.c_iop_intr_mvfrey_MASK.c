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
struct TYPE_7__ {int* outlist_cptr; int outlist_rptr; int list_count; TYPE_2__* mu; TYPE_1__* outlist; } ;
struct TYPE_8__ {TYPE_3__ mvfrey; } ;
struct hptiop_hba {TYPE_4__ u; scalar_t__ initialized; } ;
struct TYPE_6__ {int /*<<< orphan*/  pcie_f0_int_enable; int /*<<< orphan*/  isr_cause; int /*<<< orphan*/  cpu_to_f0_msg_a; int /*<<< orphan*/  f0_doorbell; } ;
struct TYPE_5__ {int val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CPU_TO_F0_DRBL_MSG_BIT ; 
 int IOPMU_QUEUE_MASK_HOST_BITS ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hptiop_hba*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hptiop_hba*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct hptiop_hba *hba)
{
	u32 _tag, status, cptr, cur_rptr;
	int ret = 0;

	if (hba->initialized)
		FUNC5(0, &(hba->u.mvfrey.mu->pcie_f0_int_enable));

	status = FUNC4(&(hba->u.mvfrey.mu->f0_doorbell));
	if (status) {
		FUNC5(status, &(hba->u.mvfrey.mu->f0_doorbell));
		if (status & CPU_TO_F0_DRBL_MSG_BIT) {
			u32 msg = FUNC4(&(hba->u.mvfrey.mu->cpu_to_f0_msg_a));
			FUNC1("received outbound msg %x\n", msg);
			FUNC2(hba, msg);
		}
		ret = 1;
	}

	status = FUNC4(&(hba->u.mvfrey.mu->isr_cause));
	if (status) {
		FUNC5(status, &(hba->u.mvfrey.mu->isr_cause));
		do {
			cptr = *hba->u.mvfrey.outlist_cptr & 0xff;
			cur_rptr = hba->u.mvfrey.outlist_rptr;
			while (cur_rptr != cptr) {
				cur_rptr++;
				if (cur_rptr ==	hba->u.mvfrey.list_count)
					cur_rptr = 0;

				_tag = hba->u.mvfrey.outlist[cur_rptr].val;
				FUNC0(!(_tag & IOPMU_QUEUE_MASK_HOST_BITS));
				FUNC3(hba, _tag);
				ret = 1;
			}
			hba->u.mvfrey.outlist_rptr = cur_rptr;
		} while (cptr != (*hba->u.mvfrey.outlist_cptr & 0xff));
	}

	if (hba->initialized)
		FUNC5(0x1010, &(hba->u.mvfrey.mu->pcie_f0_int_enable));

	return ret;
}