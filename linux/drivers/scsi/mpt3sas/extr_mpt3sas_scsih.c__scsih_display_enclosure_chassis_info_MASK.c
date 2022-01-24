#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct scsi_target {int dummy; } ;
struct scsi_device {int dummy; } ;
struct _sas_device {scalar_t__ enclosure_handle; char* connector_name; int /*<<< orphan*/  chassis_slot; scalar_t__ is_chassis_slot_valid; int /*<<< orphan*/  enclosure_level; int /*<<< orphan*/  slot; scalar_t__ enclosure_logical_id; } ;
struct MPT3SAS_ADAPTER {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scsi_device*,char*,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_target*,char*,unsigned long long,...) ; 

__attribute__((used)) static void
FUNC3(struct MPT3SAS_ADAPTER *ioc,
	struct _sas_device *sas_device, struct scsi_device *sdev,
	struct scsi_target *starget)
{
	if (sdev) {
		if (sas_device->enclosure_handle != 0)
			FUNC1(KERN_INFO, sdev,
			    "enclosure logical id (0x%016llx), slot(%d) \n",
			    (unsigned long long)
			    sas_device->enclosure_logical_id,
			    sas_device->slot);
		if (sas_device->connector_name[0] != '\0')
			FUNC1(KERN_INFO, sdev,
			    "enclosure level(0x%04x), connector name( %s)\n",
			    sas_device->enclosure_level,
			    sas_device->connector_name);
		if (sas_device->is_chassis_slot_valid)
			FUNC1(KERN_INFO, sdev, "chassis slot(0x%04x)\n",
			    sas_device->chassis_slot);
	} else if (starget) {
		if (sas_device->enclosure_handle != 0)
			FUNC2(KERN_INFO, starget,
			    "enclosure logical id(0x%016llx), slot(%d) \n",
			    (unsigned long long)
			    sas_device->enclosure_logical_id,
			    sas_device->slot);
		if (sas_device->connector_name[0] != '\0')
			FUNC2(KERN_INFO, starget,
			    "enclosure level(0x%04x), connector name( %s)\n",
			    sas_device->enclosure_level,
			    sas_device->connector_name);
		if (sas_device->is_chassis_slot_valid)
			FUNC2(KERN_INFO, starget,
			    "chassis slot(0x%04x)\n",
			    sas_device->chassis_slot);
	} else {
		if (sas_device->enclosure_handle != 0)
			FUNC0(ioc, "enclosure logical id(0x%016llx), slot(%d)\n",
				 (u64)sas_device->enclosure_logical_id,
				 sas_device->slot);
		if (sas_device->connector_name[0] != '\0')
			FUNC0(ioc, "enclosure level(0x%04x), connector name( %s)\n",
				 sas_device->enclosure_level,
				 sas_device->connector_name);
		if (sas_device->is_chassis_slot_valid)
			FUNC0(ioc, "chassis slot(0x%04x)\n",
				 sas_device->chassis_slot);
	}
}