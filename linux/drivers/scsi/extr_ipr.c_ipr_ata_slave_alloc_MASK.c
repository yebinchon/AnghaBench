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
struct scsi_device {TYPE_1__* sdev_target; } ;
struct ipr_sata_port {int /*<<< orphan*/  ap; } ;
struct TYPE_2__ {struct ipr_sata_port* hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 int ENXIO ; 
 int /*<<< orphan*/  LEAVE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*) ; 

__attribute__((used)) static int FUNC3(struct scsi_device *sdev)
{
	struct ipr_sata_port *sata_port = NULL;
	int rc = -ENXIO;

	ENTER;
	if (sdev->sdev_target)
		sata_port = sdev->sdev_target->hostdata;
	if (sata_port) {
		rc = FUNC0(sata_port->ap);
		if (rc == 0)
			rc = FUNC1(sata_port->ap);
	}

	if (rc)
		FUNC2(sdev);

	LEAVE;
	return rc;
}