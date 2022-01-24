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
struct ufs_hba {int errors; } ;

/* Variables and functions */
 int UFSHCD_ERROR_MASK ; 
 int UFSHCD_UIC_HIBERN8_MASK ; 
 int UFSHCD_UIC_MASK ; 
 int UTP_TASK_REQ_COMPL ; 
 int UTP_TRANSFER_REQ_COMPL ; 
 int /*<<< orphan*/  FUNC0 (struct ufs_hba*) ; 
 scalar_t__ FUNC1 (struct ufs_hba*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct ufs_hba*,int) ; 

__attribute__((used)) static void FUNC5(struct ufs_hba *hba, u32 intr_status)
{
	hba->errors = UFSHCD_ERROR_MASK & intr_status;

	if (FUNC1(hba, intr_status))
		hba->errors |= (UFSHCD_UIC_HIBERN8_MASK & intr_status);

	if (hba->errors)
		FUNC0(hba);

	if (intr_status & UFSHCD_UIC_MASK)
		FUNC4(hba, intr_status);

	if (intr_status & UTP_TASK_REQ_COMPL)
		FUNC2(hba);

	if (intr_status & UTP_TRANSFER_REQ_COMPL)
		FUNC3(hba);
}