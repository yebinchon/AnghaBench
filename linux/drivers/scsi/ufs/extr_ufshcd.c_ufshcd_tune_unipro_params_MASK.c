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
struct ufs_hba {int dev_quirks; } ;

/* Variables and functions */
 int /*<<< orphan*/  PA_TACTIVATE ; 
 int UFS_DEVICE_QUIRK_HOST_PA_TACTIVATE ; 
 int UFS_DEVICE_QUIRK_PA_TACTIVATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ufs_hba*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC6 (struct ufs_hba*) ; 

__attribute__((used)) static void FUNC7(struct ufs_hba *hba)
{
	if (FUNC2(hba)) {
		FUNC5(hba);
		FUNC4(hba);
	}

	if (hba->dev_quirks & UFS_DEVICE_QUIRK_PA_TACTIVATE)
		/* set 1ms timeout for PA_TACTIVATE */
		FUNC1(hba, FUNC0(PA_TACTIVATE), 10);

	if (hba->dev_quirks & UFS_DEVICE_QUIRK_HOST_PA_TACTIVATE)
		FUNC3(hba);

	FUNC6(hba);
}