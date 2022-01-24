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
struct _sas_device {int /*<<< orphan*/  list; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  sas_device_lock; int /*<<< orphan*/  sas_device_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct _sas_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct _sas_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct MPT3SAS_ADAPTER *ioc,
		struct _sas_device *sas_device)
{
	unsigned long flags;

	FUNC5(&ioc->sas_device_lock, flags);

	/*
	 * Since we dropped the lock during the call to port_add(), we need to
	 * be careful here that somebody else didn't move or delete this item
	 * while we were busy with other things.
	 *
	 * If it was on the list, we need a put() for the reference the list
	 * had. Either way, we need a get() for the destination list.
	 */
	if (!FUNC2(&sas_device->list)) {
		FUNC1(&sas_device->list);
		FUNC4(sas_device);
	}

	FUNC3(sas_device);
	FUNC0(&sas_device->list, &ioc->sas_device_list);

	FUNC6(&ioc->sas_device_lock, flags);
}