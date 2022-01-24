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
struct ufs_hba {int quirks; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  POST_CHANGE ; 
 int /*<<< orphan*/  PRE_CHANGE ; 
 int /*<<< orphan*/  UFSHCD_UIC_MASK ; 
 int UFSHCI_QUIRK_BROKEN_HCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct ufs_hba*) ; 
 int FUNC2 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct ufs_hba*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC6 (struct ufs_hba*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ufs_hba *hba)
{
	int ret;

	if (hba->quirks & UFSHCI_QUIRK_BROKEN_HCE) {
		FUNC5(hba);
		FUNC6(hba, PRE_CHANGE);

		/* enable UIC related interrupts */
		FUNC3(hba, UFSHCD_UIC_MASK);
		ret = FUNC2(hba);
		if (!ret) {
			ret = FUNC1(hba);
			if (!ret)
				FUNC6(hba, POST_CHANGE);
			if (ret)
				FUNC0(hba->dev,
					"Host controller enable failed with non-hce\n");
		}
	} else {
		ret = FUNC4(hba);
	}

	return ret;
}