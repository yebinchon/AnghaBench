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
struct sas_ha_struct {int dummy; } ;
struct hisi_hba {struct sas_ha_struct sha; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 unsigned long HZ ; 
 int /*<<< orphan*/  FUNC0 (struct sas_ha_struct*) ; 
 struct hisi_hba* FUNC1 (struct Scsi_Host*) ; 

int FUNC2(struct Scsi_Host *shost, unsigned long time)
{
	struct hisi_hba *hisi_hba = FUNC1(shost);
	struct sas_ha_struct *sha = &hisi_hba->sha;

	/* Wait for PHY up interrupt to occur */
	if (time < HZ)
		return 0;

	FUNC0(sha);
	return 1;
}