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
struct sas_ha_struct {struct mvs_prv_info* lldd_ha; } ;
struct mvs_prv_info {scalar_t__ scan_finished; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 struct sas_ha_struct* FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (struct sas_ha_struct*) ; 

int FUNC2(struct Scsi_Host *shost, unsigned long time)
{
	struct sas_ha_struct *sha = FUNC0(shost);
	struct mvs_prv_info *mvs_prv = sha->lldd_ha;

	if (mvs_prv->scan_finished == 0)
		return 0;

	FUNC1(sha);
	return 1;
}