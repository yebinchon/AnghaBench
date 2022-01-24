#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_10__ {scalar_t__ NumSensors; } ;
struct TYPE_9__ {int /*<<< orphan*/  Flags; } ;
struct TYPE_7__ {int IOCCapabilities; } ;
struct TYPE_8__ {int EEDPTagMode; int AddlFlags2; int NVMeAbortTO; } ;
struct MPT3SAS_ADAPTER {int nvme_abort_timeout; int tm_custom_handling; scalar_t__ is_aero_ioc; TYPE_5__ iounit_pg8; scalar_t__ temp_sensors_count; TYPE_3__ iounit_pg1; TYPE_1__ facts; int /*<<< orphan*/  iounit_pg0; int /*<<< orphan*/  ioc_pg8; int /*<<< orphan*/  bios_pg3; int /*<<< orphan*/  bios_pg2; TYPE_2__ manu_pg11; int /*<<< orphan*/  name; int /*<<< orphan*/  is_gen35_ioc; int /*<<< orphan*/  manu_pg10; scalar_t__ ir_firmware; int /*<<< orphan*/  manu_pg0; } ;
typedef  int /*<<< orphan*/  Mpi2ConfigReply_t ;

/* Variables and functions */
 int MPI2_IOCFACTS_CAPABILITY_TASK_SET_FULL_HANDLING ; 
 int /*<<< orphan*/  MPI2_IOUNITPAGE1_DISABLE_TASK_SET_FULL_HANDLING ; 
 int NVME_TASK_ABORT_MAX_TIMEOUT ; 
 int NVME_TASK_ABORT_MIN_TIMEOUT ; 
 int NVME_TASK_MNGT_CUSTOM_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*) ; 
 int /*<<< orphan*/  FUNC1 (struct MPT3SAS_ADAPTER*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(struct MPT3SAS_ADAPTER *ioc)
{
	Mpi2ConfigReply_t mpi_reply;
	u32 iounit_pg1_flags;

	ioc->nvme_abort_timeout = 30;
	FUNC10(ioc, &mpi_reply, &ioc->manu_pg0);
	if (ioc->ir_firmware)
		FUNC11(ioc, &mpi_reply,
		    &ioc->manu_pg10);

	/*
	 * Ensure correct T10 PI operation if vendor left EEDPTagMode
	 * flag unset in NVDATA.
	 */
	FUNC12(ioc, &mpi_reply, &ioc->manu_pg11);
	if (!ioc->is_gen35_ioc && ioc->manu_pg11.EEDPTagMode == 0) {
		FUNC15("%s: overriding NVDATA EEDPTagMode setting\n",
		    ioc->name);
		ioc->manu_pg11.EEDPTagMode &= ~0x3;
		ioc->manu_pg11.EEDPTagMode |= 0x1;
		FUNC14(ioc, &mpi_reply,
		    &ioc->manu_pg11);
	}
	if (ioc->manu_pg11.AddlFlags2 & NVME_TASK_MNGT_CUSTOM_MASK)
		ioc->tm_custom_handling = 1;
	else {
		ioc->tm_custom_handling = 0;
		if (ioc->manu_pg11.NVMeAbortTO < NVME_TASK_ABORT_MIN_TIMEOUT)
			ioc->nvme_abort_timeout = NVME_TASK_ABORT_MIN_TIMEOUT;
		else if (ioc->manu_pg11.NVMeAbortTO >
					NVME_TASK_ABORT_MAX_TIMEOUT)
			ioc->nvme_abort_timeout = NVME_TASK_ABORT_MAX_TIMEOUT;
		else
			ioc->nvme_abort_timeout = ioc->manu_pg11.NVMeAbortTO;
	}

	FUNC4(ioc, &mpi_reply, &ioc->bios_pg2);
	FUNC5(ioc, &mpi_reply, &ioc->bios_pg3);
	FUNC6(ioc, &mpi_reply, &ioc->ioc_pg8);
	FUNC7(ioc, &mpi_reply, &ioc->iounit_pg0);
	FUNC8(ioc, &mpi_reply, &ioc->iounit_pg1);
	FUNC9(ioc, &mpi_reply, &ioc->iounit_pg8);
	FUNC0(ioc);

	/*
	 * Enable task_set_full handling in iounit_pg1 when the
	 * facts capabilities indicate that its supported.
	 */
	iounit_pg1_flags = FUNC3(ioc->iounit_pg1.Flags);
	if ((ioc->facts.IOCCapabilities &
	    MPI2_IOCFACTS_CAPABILITY_TASK_SET_FULL_HANDLING))
		iounit_pg1_flags &=
		    ~MPI2_IOUNITPAGE1_DISABLE_TASK_SET_FULL_HANDLING;
	else
		iounit_pg1_flags |=
		    MPI2_IOUNITPAGE1_DISABLE_TASK_SET_FULL_HANDLING;
	ioc->iounit_pg1.Flags = FUNC2(iounit_pg1_flags);
	FUNC13(ioc, &mpi_reply, &ioc->iounit_pg1);

	if (ioc->iounit_pg8.NumSensors)
		ioc->temp_sensors_count = ioc->iounit_pg8.NumSensors;
	if (ioc->is_aero_ioc)
		FUNC1(ioc);
}