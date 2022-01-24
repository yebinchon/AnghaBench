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
struct work_struct {int dummy; } ;
struct sas_ha_struct {int /*<<< orphan*/  disco_mutex; int /*<<< orphan*/  state; } ;
struct sas_discovery_event {struct asd_sas_port* port; } ;
struct domain_device {int /*<<< orphan*/  dev_type; } ;
struct TYPE_2__ {int /*<<< orphan*/  pending; } ;
struct asd_sas_port {int /*<<< orphan*/  id; TYPE_1__ disc; struct domain_device* port_dev; struct sas_ha_struct* ha; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISCE_REVALIDATE_DOMAIN ; 
 int /*<<< orphan*/  SAS_HA_ATA_EH_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (struct asd_sas_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct asd_sas_port*) ; 
 int FUNC7 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct asd_sas_port*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sas_discovery_event* FUNC11 (struct work_struct*) ; 

__attribute__((used)) static void FUNC12(struct work_struct *work)
{
	int res = 0;
	struct sas_discovery_event *ev = FUNC11(work);
	struct asd_sas_port *port = ev->port;
	struct sas_ha_struct *ha = port->ha;
	struct domain_device *ddev = port->port_dev;

	/* prevent revalidation from finding sata links in recovery */
	FUNC2(&ha->disco_mutex);
	if (FUNC10(SAS_HA_ATA_EH_ACTIVE, &ha->state)) {
		FUNC4("REVALIDATION DEFERRED on port %d, pid:%d\n",
			 port->id, FUNC9(current));
		goto out;
	}

	FUNC0(DISCE_REVALIDATE_DOMAIN, &port->disc.pending);

	FUNC4("REVALIDATING DOMAIN on port %d, pid:%d\n", port->id,
		 FUNC9(current));

	if (ddev && FUNC1(ddev->dev_type))
		res = FUNC7(ddev);

	FUNC4("done REVALIDATING DOMAIN on port %d, pid:%d, res 0x%x\n",
		 port->id, FUNC9(current), res);
 out:
	FUNC3(&ha->disco_mutex);

	FUNC5(port);
	FUNC6(port);
	FUNC8(port);
}