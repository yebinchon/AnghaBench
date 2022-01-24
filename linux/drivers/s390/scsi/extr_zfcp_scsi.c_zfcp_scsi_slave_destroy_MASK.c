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
struct zfcp_scsi_dev {TYPE_1__* port; } ;
struct scsi_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct zfcp_scsi_dev* FUNC1 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*,char*) ; 

__attribute__((used)) static void FUNC3(struct scsi_device *sdev)
{
	struct zfcp_scsi_dev *zfcp_sdev = FUNC1(sdev);

	/* if previous slave_alloc returned early, there is nothing to do */
	if (!zfcp_sdev->port)
		return;

	FUNC2(sdev, "scssd_1");
	FUNC0(&zfcp_sdev->port->dev);
}