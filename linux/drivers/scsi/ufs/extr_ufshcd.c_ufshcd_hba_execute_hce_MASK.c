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
struct ufs_hba {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  POST_CHANGE ; 
 int /*<<< orphan*/  PRE_CHANGE ; 
 int /*<<< orphan*/  UFSHCD_UIC_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ufs_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct ufs_hba*,int) ; 
 scalar_t__ FUNC4 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC6 (struct ufs_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct ufs_hba *hba)
{
	int retry;

	if (!FUNC4(hba))
		/* change controller state to "reset state" */
		FUNC3(hba, true);

	/* UniPro link is disabled at this point */
	FUNC5(hba);

	FUNC6(hba, PRE_CHANGE);

	/* start controller initialization sequence */
	FUNC2(hba);

	/*
	 * To initialize a UFS host controller HCE bit must be set to 1.
	 * During initialization the HCE bit value changes from 1->0->1.
	 * When the host controller completes initialization sequence
	 * it sets the value of HCE bit to 1. The same HCE bit is read back
	 * to check if the controller has completed initialization sequence.
	 * So without this delay the value HCE = 1, set in the previous
	 * instruction might be read back.
	 * This delay can be changed based on the controller.
	 */
	FUNC7(1000, 1100);

	/* wait for the host controller to complete initialization */
	retry = 10;
	while (FUNC4(hba)) {
		if (retry) {
			retry--;
		} else {
			FUNC0(hba->dev,
				"Controller enable failed\n");
			return -EIO;
		}
		FUNC7(5000, 5100);
	}

	/* enable UIC related interrupts */
	FUNC1(hba, UFSHCD_UIC_MASK);

	FUNC6(hba, POST_CHANGE);

	return 0;
}