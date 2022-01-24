#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  enabled_phys; } ;
struct asd_ha_struct {TYPE_1__ hw_prof; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_4__ {struct asd_ha_struct* lldd_ha; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct Scsi_Host*) ; 
 int FUNC1 (struct asd_ha_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void FUNC3(struct Scsi_Host *shost)
{
	struct asd_ha_struct *asd_ha;
	int err;

	asd_ha = FUNC0(shost)->lldd_ha;
	err = FUNC1(asd_ha, asd_ha->hw_prof.enabled_phys);
	if (err)
		FUNC2("Couldn't enable phys, err:%d\n", err);
}