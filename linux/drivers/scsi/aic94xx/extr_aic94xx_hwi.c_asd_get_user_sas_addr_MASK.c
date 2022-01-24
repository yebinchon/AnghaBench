#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__* sas_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  shost; } ;
struct TYPE_5__ {TYPE_1__ core; } ;
struct asd_ha_struct {TYPE_3__ hw_prof; TYPE_2__ sas_ha; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC1(struct asd_ha_struct *asd_ha)
{
	/* adapter came with a sas address */
	if (asd_ha->hw_prof.sas_addr[0])
		return 0;

	return FUNC0(asd_ha->sas_ha.core.shost,
				asd_ha->hw_prof.sas_addr);
}