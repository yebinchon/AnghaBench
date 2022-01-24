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
typedef  size_t u64 ;
typedef  int u32 ;
struct hisi_sas_itct {int dummy; } ;
struct hisi_sas_device {size_t device_id; int /*<<< orphan*/ * completion; } ;
struct hisi_hba {struct hisi_sas_itct* itct; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENT_INT_SRC3 ; 
 int ENT_INT_SRC3_ITC_INT_MSK ; 
 int /*<<< orphan*/  ITCT_CLR ; 
 size_t ITCT_CLR_EN_MSK ; 
 size_t ITCT_DEV_MSK ; 
 int /*<<< orphan*/  completion ; 
 int FUNC1 (struct hisi_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hisi_hba*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hisi_sas_itct*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct hisi_hba *hisi_hba,
			      struct hisi_sas_device *sas_dev)
{
	FUNC0(completion);
	u64 dev_id = sas_dev->device_id;
	struct hisi_sas_itct *itct = &hisi_hba->itct[dev_id];
	u32 reg_val = FUNC1(hisi_hba, ENT_INT_SRC3);
	int i;

	sas_dev->completion = &completion;

	/* clear the itct interrupt state */
	if (ENT_INT_SRC3_ITC_INT_MSK & reg_val)
		FUNC2(hisi_hba, ENT_INT_SRC3,
				 ENT_INT_SRC3_ITC_INT_MSK);

	for (i = 0; i < 2; i++) {
		reg_val = ITCT_CLR_EN_MSK | (dev_id & ITCT_DEV_MSK);
		FUNC2(hisi_hba, ITCT_CLR, reg_val);
		FUNC4(sas_dev->completion);

		FUNC3(itct, 0, sizeof(struct hisi_sas_itct));
	}
}