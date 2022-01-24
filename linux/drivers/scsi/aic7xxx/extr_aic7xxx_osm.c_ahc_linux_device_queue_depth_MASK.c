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
typedef  scalar_t__ u_int ;
struct scsi_device {scalar_t__ tagged_supported; TYPE_2__* sdev_target; int /*<<< orphan*/  lun; TYPE_1__* host; } ;
struct ahc_softc {int /*<<< orphan*/  our_id_b; int /*<<< orphan*/  our_id; } ;
struct ahc_devinfo {int /*<<< orphan*/  lun; int /*<<< orphan*/  target; int /*<<< orphan*/  channel; } ;
struct TYPE_4__ {scalar_t__ channel; int /*<<< orphan*/  id; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_TRANSFER_NEG ; 
 int /*<<< orphan*/  AHC_QUEUE_NONE ; 
 int /*<<< orphan*/  AHC_QUEUE_TAGGED ; 
 int /*<<< orphan*/  ROLE_INITIATOR ; 
 int /*<<< orphan*/  FUNC0 (struct ahc_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ahc_softc*,struct ahc_devinfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahc_softc*,struct scsi_device*,struct ahc_devinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*,struct ahc_devinfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(struct scsi_device *sdev)
{
	struct	ahc_devinfo devinfo;
	u_int	tags;
	struct ahc_softc *ahc = *((struct ahc_softc **)sdev->host->hostdata);

	FUNC0(&devinfo,
			    sdev->sdev_target->channel == 0
			  ? ahc->our_id : ahc->our_id_b,
			    sdev->sdev_target->id, sdev->lun,
			    sdev->sdev_target->channel == 0 ? 'A' : 'B',
			    ROLE_INITIATOR);
	tags = FUNC1(ahc, &devinfo);
	if (tags != 0 && sdev->tagged_supported != 0) {

		FUNC2(ahc, sdev, &devinfo, AHC_QUEUE_TAGGED);
		FUNC4(ahc, devinfo.channel, devinfo.target,
			       devinfo.lun, AC_TRANSFER_NEG);
		FUNC3(ahc, &devinfo);
		FUNC5("Tagged Queuing enabled.  Depth %d\n", tags);
	} else {
		FUNC2(ahc, sdev, &devinfo, AHC_QUEUE_NONE);
		FUNC4(ahc, devinfo.channel, devinfo.target,
			       devinfo.lun, AC_TRANSFER_NEG);
	}
}