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
struct TYPE_2__ {int /*<<< orphan*/  shost; } ;
struct sas_ha_struct {int num_phys; int /*<<< orphan*/  drain_mutex; struct asd_sas_port** sas_port; TYPE_1__ core; } ;
struct asd_sas_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISCE_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (struct sas_ha_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sas_ha_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct asd_sas_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct sas_ha_struct *ha)
{
	int i;

	FUNC3(ha);
	FUNC5(ha->core.shost);
	for (i = 0; i < ha->num_phys; i++) {
		struct asd_sas_port *port = ha->sas_port[i];

		FUNC4(port, DISCE_SUSPEND);
	}

	/* flush suspend events while unregistered */
	FUNC1(&ha->drain_mutex);
	FUNC0(ha);
	FUNC2(&ha->drain_mutex);
}