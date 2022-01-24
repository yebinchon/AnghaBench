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
typedef  int /*<<< orphan*/  u16 ;
struct scsi_target {int /*<<< orphan*/  dev; struct MPT3SAS_TARGET* hostdata; } ;
struct _raid_device {int /*<<< orphan*/  list; scalar_t__ wwid; int /*<<< orphan*/  handle; struct scsi_target* starget; } ;
struct MPT3SAS_TARGET {int deleted; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  raid_device_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct _raid_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct _raid_device* FUNC3 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC7(struct MPT3SAS_ADAPTER *ioc, u16 handle)
{
	struct _raid_device *raid_device;
	unsigned long flags;
	struct MPT3SAS_TARGET *sas_target_priv_data;
	struct scsi_target *starget = NULL;

	FUNC5(&ioc->raid_device_lock, flags);
	raid_device = FUNC3(ioc, handle);
	if (raid_device) {
		if (raid_device->starget) {
			starget = raid_device->starget;
			sas_target_priv_data = starget->hostdata;
			sas_target_priv_data->deleted = 1;
		}
		FUNC0(ioc, "removing handle(0x%04x), wwid(0x%016llx)\n",
			 raid_device->handle, (u64)raid_device->wwid);
		FUNC2(&raid_device->list);
		FUNC1(raid_device);
	}
	FUNC6(&ioc->raid_device_lock, flags);
	if (starget)
		FUNC4(&starget->dev);
}