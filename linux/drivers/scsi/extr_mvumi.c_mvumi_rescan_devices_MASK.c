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
struct scsi_device {int /*<<< orphan*/  sdev_gendev; } ;
struct mvumi_hba {int /*<<< orphan*/  shost; } ;

/* Variables and functions */
 struct scsi_device* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct mvumi_hba *mhba, int id)
{
	struct scsi_device *sdev;

	sdev = FUNC0(mhba->shost, 0, id, 0);
	if (sdev) {
		FUNC2(&sdev->sdev_gendev);
		FUNC1(sdev);
	}
}