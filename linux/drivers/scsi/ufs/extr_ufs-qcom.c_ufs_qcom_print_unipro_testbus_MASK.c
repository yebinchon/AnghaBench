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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int select_minor; int /*<<< orphan*/  select_major; } ;
struct ufs_qcom_host {TYPE_1__ testbus; } ;
struct ufs_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  TSTBUS_UNIPRO ; 
 int /*<<< orphan*/  UFS_TEST_BUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ufs_qcom_host*) ; 
 struct ufs_qcom_host* FUNC4 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct ufs_hba*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ufs_hba *hba)
{
	struct ufs_qcom_host *host = FUNC4(hba);
	u32 *testbus = NULL;
	int i, nminor = 256, testbus_len = nminor * sizeof(u32);

	testbus = FUNC1(testbus_len, GFP_KERNEL);
	if (!testbus)
		return;

	host->testbus.select_major = TSTBUS_UNIPRO;
	for (i = 0; i < nminor; i++) {
		host->testbus.select_minor = i;
		FUNC3(host);
		testbus[i] = FUNC5(hba, UFS_TEST_BUS);
	}
	FUNC2(KERN_ERR, "UNIPRO_TEST_BUS ", DUMP_PREFIX_OFFSET,
			16, 4, testbus, testbus_len, false);
	FUNC0(testbus);
}