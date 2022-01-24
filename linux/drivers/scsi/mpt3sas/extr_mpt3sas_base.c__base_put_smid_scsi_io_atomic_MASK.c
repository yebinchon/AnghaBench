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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct MPT3SAS_ADAPTER {TYPE_1__* chip; } ;
struct TYPE_4__ {int /*<<< orphan*/  SMID; int /*<<< orphan*/  MSIxIndex; int /*<<< orphan*/  RequestFlags; } ;
struct TYPE_3__ {int /*<<< orphan*/  AtomicRequestDescriptorPost; } ;
typedef  TYPE_2__ Mpi26AtomicRequestDescriptor_t ;

/* Variables and functions */
 int /*<<< orphan*/  MPI2_REQ_DESCRIPT_FLAGS_SCSI_IO ; 
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct MPT3SAS_ADAPTER *ioc, u16 smid,
	u16 handle)
{
	Mpi26AtomicRequestDescriptor_t descriptor;
	u32 *request = (u32 *)&descriptor;

	descriptor.RequestFlags = MPI2_REQ_DESCRIPT_FLAGS_SCSI_IO;
	descriptor.MSIxIndex = FUNC0(ioc, smid);
	descriptor.SMID = FUNC1(smid);

	FUNC3(FUNC2(*request), &ioc->chip->AtomicRequestDescriptorPost);
}