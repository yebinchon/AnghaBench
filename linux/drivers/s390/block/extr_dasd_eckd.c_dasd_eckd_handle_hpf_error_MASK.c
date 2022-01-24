#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lpum; } ;
struct TYPE_6__ {TYPE_1__ esw1; } ;
struct TYPE_8__ {scalar_t__ sesq; } ;
struct TYPE_7__ {TYPE_4__ tm; } ;
struct irb {TYPE_2__ esw; TYPE_3__ scsw; } ;
struct dasd_eckd_private {int /*<<< orphan*/  fcx_max_data; } ;
struct dasd_device {struct dasd_eckd_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_STOPPED_NOT_ACC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dasd_device*,char*,char*) ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 scalar_t__ SCSW_SESQ_DEV_NOFCX ; 
 scalar_t__ SCSW_SESQ_PATH_NOFCX ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*) ; 
 scalar_t__ FUNC3 (struct dasd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct dasd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dasd_device*) ; 

__attribute__((used)) static void FUNC7(struct dasd_device *device,
				       struct irb *irb)
{
	struct dasd_eckd_private *private = device->private;

	if (!private->fcx_max_data) {
		/* sanity check for no HPF, the error makes no sense */
		FUNC0(DBF_WARNING, device, "%s",
			      "Trying to disable HPF for a non HPF device");
		return;
	}
	if (irb->scsw.tm.sesq == SCSW_SESQ_DEV_NOFCX) {
		FUNC2(device);
	} else if (irb->scsw.tm.sesq == SCSW_SESQ_PATH_NOFCX) {
		if (FUNC3(device, irb->esw.esw1.lpum))
			return;
		FUNC2(device);
		FUNC5(device,
				  FUNC4(device));
	}
	/*
	 * prevent that any new I/O ist started on the device and schedule a
	 * requeue of existing requests
	 */
	FUNC1(device, DASD_STOPPED_NOT_ACC);
	FUNC6(device);
}