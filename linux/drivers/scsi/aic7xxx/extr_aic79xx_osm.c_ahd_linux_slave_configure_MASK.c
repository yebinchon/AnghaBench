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
struct scsi_device {int /*<<< orphan*/  sdev_target; TYPE_1__* host; } ;
struct ahd_softc {int dummy; } ;
struct TYPE_2__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_device*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scsi_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct scsi_device *sdev)
{
	struct	ahd_softc *ahd;

	ahd = *((struct ahd_softc **)sdev->host->hostdata);
	if (bootverbose)
		FUNC1(KERN_INFO, sdev, "Slave Configure\n");

	FUNC0(sdev);

	/* Initial Domain Validation */
	if (!FUNC3(sdev->sdev_target))
		FUNC2(sdev);

	return 0;
}