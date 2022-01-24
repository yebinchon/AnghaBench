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
struct _sas_device {int /*<<< orphan*/  list; scalar_t__ sas_address; int /*<<< orphan*/  handle; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  sas_device_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*,struct _sas_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct MPT3SAS_ADAPTER*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct _sas_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC7(struct MPT3SAS_ADAPTER *ioc,
	struct _sas_device *sas_device)
{
	unsigned long flags;

	if (!sas_device)
		return;
	FUNC1(ioc, "removing handle(0x%04x), sas_addr(0x%016llx)\n",
		 sas_device->handle, (u64)sas_device->sas_address);

	FUNC0(ioc, sas_device, NULL, NULL);

	/*
	 * The lock serializes access to the list, but we still need to verify
	 * that nobody removed the entry while we were waiting on the lock.
	 */
	FUNC5(&ioc->sas_device_lock, flags);
	if (!FUNC3(&sas_device->list)) {
		FUNC2(&sas_device->list);
		FUNC4(sas_device);
	}
	FUNC6(&ioc->sas_device_lock, flags);
}