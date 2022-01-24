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
struct Scsi_Host {scalar_t__ io_port; scalar_t__ irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_list; scalar_t__ pnpdev; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  IO_RANGE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC6 (struct Scsi_Host*) ; 

void FUNC7(struct Scsi_Host *shpnt)
{
	if (!shpnt)
		return;

	FUNC6(shpnt);
	if (shpnt->irq)
		FUNC1(shpnt->irq, shpnt);

#if !defined(AHA152X_PCMCIA)
	if (shpnt->io_port)
		FUNC4(shpnt->io_port, IO_RANGE);
#endif

#ifdef __ISAPNP__
	if (HOSTDATA(shpnt)->pnpdev)
		pnp_device_detach(HOSTDATA(shpnt)->pnpdev);
#endif

	FUNC2(&FUNC0(shpnt)->host_list);
	FUNC5(shpnt);
}