#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct bnx2i_hba {int max_sqes; int max_rqes; int max_cqes; int /*<<< orphan*/  cnic_dev_type; } ;

/* Variables and functions */
 int BNX2I_CQE_SIZE ; 
 int /*<<< orphan*/  BNX2I_NX2_DEV_5706 ; 
 int /*<<< orphan*/  BNX2I_NX2_DEV_5708 ; 
 int /*<<< orphan*/  BNX2I_NX2_DEV_5709 ; 
 int BNX2I_RQ_WQE_SIZE ; 
 int BNX2I_SQ_WQE_SIZE ; 
 int CNIC_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct bnx2i_hba *hba)
{
	u32 num_elements_per_pg;

	if (FUNC2(BNX2I_NX2_DEV_5706, &hba->cnic_dev_type) ||
	    FUNC2(BNX2I_NX2_DEV_5708, &hba->cnic_dev_type) ||
	    FUNC2(BNX2I_NX2_DEV_5709, &hba->cnic_dev_type)) {
		if (!FUNC0(hba->max_sqes))
			hba->max_sqes = FUNC1(hba->max_sqes);

		if (!FUNC0(hba->max_rqes))
			hba->max_rqes = FUNC1(hba->max_rqes);
	}

	/* Adjust each queue size if the user selection does not
	 * yield integral num of page buffers
	 */
	/* adjust SQ */
	num_elements_per_pg = CNIC_PAGE_SIZE / BNX2I_SQ_WQE_SIZE;
	if (hba->max_sqes < num_elements_per_pg)
		hba->max_sqes = num_elements_per_pg;
	else if (hba->max_sqes % num_elements_per_pg)
		hba->max_sqes = (hba->max_sqes + num_elements_per_pg - 1) &
				 ~(num_elements_per_pg - 1);

	/* adjust CQ */
	num_elements_per_pg = CNIC_PAGE_SIZE / BNX2I_CQE_SIZE;
	if (hba->max_cqes < num_elements_per_pg)
		hba->max_cqes = num_elements_per_pg;
	else if (hba->max_cqes % num_elements_per_pg)
		hba->max_cqes = (hba->max_cqes + num_elements_per_pg - 1) &
				 ~(num_elements_per_pg - 1);

	/* adjust RQ */
	num_elements_per_pg = CNIC_PAGE_SIZE / BNX2I_RQ_WQE_SIZE;
	if (hba->max_rqes < num_elements_per_pg)
		hba->max_rqes = num_elements_per_pg;
	else if (hba->max_rqes % num_elements_per_pg)
		hba->max_rqes = (hba->max_rqes + num_elements_per_pg - 1) &
				 ~(num_elements_per_pg - 1);
}