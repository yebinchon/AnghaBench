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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VS_DEBUGOMC ; 
 int /*<<< orphan*/  VS_MPHYCFGUPDT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct ufs_hba*) ; 
 int FUNC4 (struct ufs_hba*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct ufs_hba *hba)
{
	int ret = 0;

	FUNC2(hba->dev, "Configuring Test Chip 20-bit RMMI\n");
	ret = FUNC3(hba);
	if (ret) {
		FUNC1(hba->dev, "Configuration failed\n");
		goto out;
	}

	/* To write Shadow register bank to effective configuration block */
	ret = FUNC4(hba, FUNC0(VS_MPHYCFGUPDT), 0x01);
	if (ret)
		goto out;

	/* To configure Debug OMC */
	ret = FUNC4(hba, FUNC0(VS_DEBUGOMC), 0x01);

out:
	return ret;
}