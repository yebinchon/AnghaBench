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
typedef  int u16 ;
struct TYPE_4__ {int /*<<< orphan*/  IRVolumeMappingFlags; } ;
struct TYPE_3__ {int ProtocolFlags; } ;
struct MPT3SAS_ADAPTER {TYPE_2__ ioc_pg8; scalar_t__ ir_firmware; TYPE_1__ facts; } ;

/* Variables and functions */
 int MPI2_IOCFACTS_PROTOCOL_SCSI_INITIATOR ; 
 int MPI2_IOCPAGE8_IRFLAGS_LOW_VOLUME_MAPPING ; 
 int MPI2_IOCPAGE8_IRFLAGS_MASK_VOLUME_MAPPING_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*) ; 
 int /*<<< orphan*/  FUNC1 (struct MPT3SAS_ADAPTER*) ; 
 int /*<<< orphan*/  FUNC2 (struct MPT3SAS_ADAPTER*) ; 
 int /*<<< orphan*/  FUNC3 (struct MPT3SAS_ADAPTER*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct MPT3SAS_ADAPTER *ioc)
{
	u16 volume_mapping_flags;

	if (!(ioc->facts.ProtocolFlags & MPI2_IOCFACTS_PROTOCOL_SCSI_INITIATOR))
		return;  /* return when IOC doesn't support initiator mode */

	FUNC0(ioc);

	if (ioc->ir_firmware) {
		volume_mapping_flags =
		    FUNC4(ioc->ioc_pg8.IRVolumeMappingFlags) &
		    MPI2_IOCPAGE8_IRFLAGS_MASK_VOLUME_MAPPING_MODE;
		if (volume_mapping_flags ==
		    MPI2_IOCPAGE8_IRFLAGS_LOW_VOLUME_MAPPING) {
			FUNC2(ioc);
			FUNC3(ioc);
		} else {
			FUNC3(ioc);
			FUNC2(ioc);
		}
	} else {
		FUNC3(ioc);
		FUNC1(ioc);
	}
}