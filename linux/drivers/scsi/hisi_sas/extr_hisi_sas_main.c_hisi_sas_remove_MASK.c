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
struct TYPE_2__ {struct Scsi_Host* shost; } ;
struct sas_ha_struct {TYPE_1__ core; struct hisi_hba* lldd_ha; } ;
struct platform_device {int dummy; } ;
struct hisi_hba {int /*<<< orphan*/  timer; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_hba*) ; 
 struct sas_ha_struct* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC4 (struct sas_ha_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct platform_device *pdev)
{
	struct sas_ha_struct *sha = FUNC2(pdev);
	struct hisi_hba *hisi_hba = sha->lldd_ha;
	struct Scsi_Host *shost = sha->core.shost;

	if (FUNC6(&hisi_hba->timer))
		FUNC0(&hisi_hba->timer);

	FUNC4(sha);
	FUNC3(sha->core.shost);

	FUNC1(hisi_hba);
	FUNC5(shost);
	return 0;
}