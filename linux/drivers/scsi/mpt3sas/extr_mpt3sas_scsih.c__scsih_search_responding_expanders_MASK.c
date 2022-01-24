#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int u16 ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  sas_expander_list; } ;
struct TYPE_7__ {int /*<<< orphan*/  IOCStatus; } ;
struct TYPE_6__ {int /*<<< orphan*/  SASAddress; int /*<<< orphan*/  DevHandle; } ;
typedef  TYPE_1__ Mpi2ExpanderPage0_t ;
typedef  TYPE_2__ Mpi2ConfigReply_t ;

/* Variables and functions */
 int MPI2_IOCSTATUS_MASK ; 
 int MPI2_IOCSTATUS_SUCCESS ; 
 int /*<<< orphan*/  MPI2_SAS_EXPAND_PGAD_FORM_GET_NEXT_HNDL ; 
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct MPT3SAS_ADAPTER*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct MPT3SAS_ADAPTER*,TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,unsigned long long) ; 

__attribute__((used)) static void
FUNC7(struct MPT3SAS_ADAPTER *ioc)
{
	Mpi2ExpanderPage0_t expander_pg0;
	Mpi2ConfigReply_t mpi_reply;
	u16 ioc_status;
	u64 sas_address;
	u16 handle;

	FUNC1(ioc, "search for expanders: start\n");

	if (FUNC4(&ioc->sas_expander_list))
		goto out;

	handle = 0xFFFF;
	while (!(FUNC5(ioc, &mpi_reply, &expander_pg0,
	    MPI2_SAS_EXPAND_PGAD_FORM_GET_NEXT_HNDL, handle))) {

		ioc_status = FUNC2(mpi_reply.IOCStatus) &
		    MPI2_IOCSTATUS_MASK;
		if (ioc_status != MPI2_IOCSTATUS_SUCCESS)
			break;

		handle = FUNC2(expander_pg0.DevHandle);
		sas_address = FUNC3(expander_pg0.SASAddress);
		FUNC6("\texpander present: handle(0x%04x), sas_addr(0x%016llx)\n",
			handle,
		    (unsigned long long)sas_address);
		FUNC0(ioc, &expander_pg0);
	}

 out:
	FUNC1(ioc, "search for expanders: complete\n");
}