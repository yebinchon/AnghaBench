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
struct hisi_hba {int /*<<< orphan*/  debugfs_dir; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,struct hisi_hba*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 scalar_t__ FUNC5 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC6 (struct hisi_hba*) ; 
 int /*<<< orphan*/  hisi_sas_debugfs_dir ; 
 int /*<<< orphan*/  hisi_sas_debugfs_trigger_dump_fops ; 

void FUNC7(struct hisi_hba *hisi_hba)
{
	struct device *dev = hisi_hba->dev;

	hisi_hba->debugfs_dir = FUNC0(FUNC4(dev),
						   hisi_sas_debugfs_dir);
	FUNC1("trigger_dump", 0600,
			    hisi_hba->debugfs_dir,
			    hisi_hba,
			    &hisi_sas_debugfs_trigger_dump_fops);

	/* create bist structures */
	FUNC6(hisi_hba);

	if (FUNC5(hisi_hba)) {
		FUNC2(hisi_hba->debugfs_dir);
		FUNC3(dev, "failed to init debugfs!\n");
	}
}