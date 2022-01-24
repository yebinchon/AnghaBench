#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ulong ;
typedef  int uint32_t ;
typedef  scalar_t__ uint ;
struct TYPE_13__ {TYPE_4__* hw; } ;
typedef  TYPE_5__ scsi_qla_host_t ;
struct TYPE_12__ {TYPE_3__* iobase; TYPE_1__* pdev; } ;
struct TYPE_10__ {int /*<<< orphan*/  hccr; } ;
struct TYPE_11__ {TYPE_2__ isp24; } ;
struct TYPE_9__ {int subsystem_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCCRX_SET_RISC_PAUSE ; 
 int RISC_SEMAPHORE ; 
 int /*<<< orphan*/  RISC_SEMAPHORE_CLR ; 
 int RISC_SEMAPHORE_FORCE ; 
 int /*<<< orphan*/  RISC_SEMAPHORE_FORCE_CLR ; 
 int /*<<< orphan*/  RISC_SEMAPHORE_FORCE_SET ; 
 int /*<<< orphan*/  RISC_SEMAPHORE_SET ; 
 scalar_t__ TIMEOUT_SEMAPHORE ; 
 scalar_t__ TIMEOUT_SEMAPHORE_FORCE ; 
 scalar_t__ TIMEOUT_TOTAL_ELAPSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(scsi_qla_host_t *vha)
{
	uint32_t wd32 = 0;
	uint delta_msec = 100;
	uint elapsed_msec = 0;
	uint timeout_msec;
	ulong n;

	if (vha->hw->pdev->subsystem_device != 0x0175 &&
	    vha->hw->pdev->subsystem_device != 0x0240)
		return;

	FUNC0(&vha->hw->iobase->isp24.hccr, HCCRX_SET_RISC_PAUSE);
	FUNC4(100);

attempt:
	timeout_msec = TIMEOUT_SEMAPHORE;
	n = timeout_msec / delta_msec;
	while (n--) {
		FUNC3(vha, RISC_SEMAPHORE_SET);
		FUNC2(vha, &wd32);
		if (wd32 & RISC_SEMAPHORE)
			break;
		FUNC1(delta_msec);
		elapsed_msec += delta_msec;
		if (elapsed_msec > TIMEOUT_TOTAL_ELAPSED)
			goto force;
	}

	if (!(wd32 & RISC_SEMAPHORE))
		goto force;

	if (!(wd32 & RISC_SEMAPHORE_FORCE))
		goto acquired;

	FUNC3(vha, RISC_SEMAPHORE_CLR);
	timeout_msec = TIMEOUT_SEMAPHORE_FORCE;
	n = timeout_msec / delta_msec;
	while (n--) {
		FUNC2(vha, &wd32);
		if (!(wd32 & RISC_SEMAPHORE_FORCE))
			break;
		FUNC1(delta_msec);
		elapsed_msec += delta_msec;
		if (elapsed_msec > TIMEOUT_TOTAL_ELAPSED)
			goto force;
	}

	if (wd32 & RISC_SEMAPHORE_FORCE)
		FUNC3(vha, RISC_SEMAPHORE_FORCE_CLR);

	goto attempt;

force:
	FUNC3(vha, RISC_SEMAPHORE_FORCE_SET);

acquired:
	return;
}