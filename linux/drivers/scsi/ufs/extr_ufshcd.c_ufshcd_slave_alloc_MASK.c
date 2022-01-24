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
struct ufs_hba {int dummy; } ;
struct scsi_device {int use_10_for_ms; int allow_restart; int no_report_opcodes; int no_write_same; int /*<<< orphan*/  host; } ;

/* Variables and functions */
 struct ufs_hba* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ufs_hba*,struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*) ; 

__attribute__((used)) static int FUNC3(struct scsi_device *sdev)
{
	struct ufs_hba *hba;

	hba = FUNC0(sdev->host);

	/* Mode sense(6) is not supported by UFS, so use Mode sense(10) */
	sdev->use_10_for_ms = 1;

	/* allow SCSI layer to restart the device in case of errors */
	sdev->allow_restart = 1;

	/* REPORT SUPPORTED OPERATION CODES is not supported */
	sdev->no_report_opcodes = 1;

	/* WRITE_SAME command is not supported */
	sdev->no_write_same = 1;

	FUNC2(sdev);

	FUNC1(hba, sdev);

	return 0;
}