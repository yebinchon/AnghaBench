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
typedef  int /*<<< orphan*/  u64 ;
struct zfcp_unit {int /*<<< orphan*/  dev; int /*<<< orphan*/  list; } ;
struct zfcp_port {int /*<<< orphan*/  unit_list_lock; } ;
struct scsi_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct zfcp_unit* FUNC0 (struct zfcp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct scsi_device* FUNC8 (struct zfcp_unit*) ; 

int FUNC9(struct zfcp_port *port, u64 fcp_lun)
{
	struct zfcp_unit *unit;
	struct scsi_device *sdev;

	FUNC6(&port->unit_list_lock);
	unit = FUNC0(port, fcp_lun);
	if (unit)
		FUNC2(&unit->list);
	FUNC7(&port->unit_list_lock);

	if (!unit)
		return -EINVAL;

	sdev = FUNC8(unit);
	if (sdev) {
		FUNC5(sdev);
		FUNC4(sdev);
	}

	FUNC3(&unit->dev);

	FUNC1(&unit->dev);

	return 0;
}