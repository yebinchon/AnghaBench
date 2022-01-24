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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct _raid_device {scalar_t__ wwid; TYPE_1__* starget; } ;
struct MPT3SAS_TARGET {int deleted; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  raid_device_lock; } ;
struct TYPE_2__ {struct MPT3SAS_TARGET* hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct MPT3SAS_ADAPTER*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct _raid_device* FUNC2 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC5(struct MPT3SAS_ADAPTER *ioc, u16 handle)
{
	struct _raid_device *raid_device;
	struct MPT3SAS_TARGET *sas_target_priv_data;
	unsigned long flags;

	FUNC3(&ioc->raid_device_lock, flags);
	raid_device = FUNC2(ioc, handle);
	if (raid_device && raid_device->starget &&
	    raid_device->starget->hostdata) {
		sas_target_priv_data =
		    raid_device->starget->hostdata;
		sas_target_priv_data->deleted = 1;
		FUNC0(ioc,
			   FUNC1(ioc, "setting delete flag: handle(0x%04x), wwid(0x%016llx)\n",
				    handle, (u64)raid_device->wwid));
	}
	FUNC4(&ioc->raid_device_lock, flags);
}