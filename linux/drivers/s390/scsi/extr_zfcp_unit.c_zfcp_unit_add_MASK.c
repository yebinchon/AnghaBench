#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct TYPE_4__ {int /*<<< orphan*/  groups; int /*<<< orphan*/  release; int /*<<< orphan*/ * parent; } ;
struct zfcp_unit {int /*<<< orphan*/  list; TYPE_1__ dev; int /*<<< orphan*/  scsi_work; scalar_t__ fcp_lun; struct zfcp_port* port; } ;
struct zfcp_port {int /*<<< orphan*/  unit_list_lock; int /*<<< orphan*/  unit_list; int /*<<< orphan*/  units; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char*,unsigned long long) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_unit*) ; 
 struct zfcp_unit* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct zfcp_port*) ; 
 int /*<<< orphan*/  zfcp_sysfs_port_units_mutex ; 
 int /*<<< orphan*/  zfcp_unit_attr_groups ; 
 struct zfcp_unit* FUNC13 (struct zfcp_port*,scalar_t__) ; 
 int /*<<< orphan*/  zfcp_unit_release ; 
 int /*<<< orphan*/  FUNC14 (struct zfcp_unit*) ; 
 int /*<<< orphan*/  zfcp_unit_scsi_scan_work ; 

int FUNC15(struct zfcp_port *port, u64 fcp_lun)
{
	struct zfcp_unit *unit;
	int retval = 0;

	FUNC7(&zfcp_sysfs_port_units_mutex);
	if (FUNC12(port)) {
		/* port is already gone */
		retval = -ENODEV;
		goto out;
	}

	unit = FUNC13(port, fcp_lun);
	if (unit) {
		FUNC9(&unit->dev);
		retval = -EEXIST;
		goto out;
	}

	unit = FUNC5(sizeof(struct zfcp_unit), GFP_KERNEL);
	if (!unit) {
		retval = -ENOMEM;
		goto out;
	}

	unit->port = port;
	unit->fcp_lun = fcp_lun;
	unit->dev.parent = &port->dev;
	unit->dev.release = zfcp_unit_release;
	unit->dev.groups = zfcp_unit_attr_groups;
	FUNC0(&unit->scsi_work, zfcp_unit_scsi_scan_work);

	if (FUNC2(&unit->dev, "0x%016llx",
			 (unsigned long long) fcp_lun)) {
		FUNC4(unit);
		retval = -ENOMEM;
		goto out;
	}

	if (FUNC3(&unit->dev)) {
		FUNC9(&unit->dev);
		retval = -ENOMEM;
		goto out;
	}

	FUNC1(&port->units); /* under zfcp_sysfs_port_units_mutex ! */

	FUNC10(&port->unit_list_lock);
	FUNC6(&unit->list, &port->unit_list);
	FUNC11(&port->unit_list_lock);
	/*
	 * lock order: shost->scan_mutex before zfcp_sysfs_port_units_mutex
	 * due to      zfcp_unit_scsi_scan() => zfcp_scsi_slave_alloc()
	 */
	FUNC8(&zfcp_sysfs_port_units_mutex);

	FUNC14(unit);
	return retval;

out:
	FUNC8(&zfcp_sysfs_port_units_mutex);
	return retval;
}