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
struct hisi_hba {int /*<<< orphan*/  flags; int /*<<< orphan*/  sem; TYPE_1__* hw; int /*<<< orphan*/  debugfs_work; int /*<<< orphan*/  wq; scalar_t__ debugfs_itct; struct Scsi_Host* shost; struct device* dev; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int (* soft_reset ) (struct hisi_hba*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HISI_SAS_REJECT_CMD_BIT ; 
 int /*<<< orphan*/  HISI_SAS_RESET_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct hisi_hba*) ; 
 scalar_t__ hisi_sas_debugfs_enable ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct Scsi_Host*) ; 
 int FUNC7 (struct hisi_hba*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct hisi_hba *hisi_hba)
{
	struct device *dev = hisi_hba->dev;
	struct Scsi_Host *shost = hisi_hba->shost;
	int rc;

	if (hisi_sas_debugfs_enable && hisi_hba->debugfs_itct)
		FUNC5(hisi_hba->wq, &hisi_hba->debugfs_work);

	if (!hisi_hba->hw->soft_reset)
		return -1;

	if (FUNC8(HISI_SAS_RESET_BIT, &hisi_hba->flags))
		return -1;

	FUNC1(dev, "controller resetting...\n");
	FUNC4(hisi_hba);

	rc = hisi_hba->hw->soft_reset(hisi_hba);
	if (rc) {
		FUNC2(dev, "controller reset failed (%d)\n", rc);
		FUNC0(HISI_SAS_REJECT_CMD_BIT, &hisi_hba->flags);
		FUNC9(&hisi_hba->sem);
		FUNC6(shost);
		FUNC0(HISI_SAS_RESET_BIT, &hisi_hba->flags);
		return rc;
	}

	FUNC3(hisi_hba);
	FUNC1(dev, "controller reset complete\n");

	return 0;
}