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
struct TYPE_2__ {int /*<<< orphan*/  sas_address; } ;
struct sas_rphy {TYPE_1__ identify; } ;
struct _sas_device {int slot; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  sas_device_lock; } ;

/* Variables and functions */
 int ENXIO ; 
 struct _sas_device* FUNC0 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ) ; 
 struct MPT3SAS_ADAPTER* FUNC1 (struct sas_rphy*) ; 
 int /*<<< orphan*/  FUNC2 (struct _sas_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC5(struct sas_rphy *rphy)
{
	struct MPT3SAS_ADAPTER *ioc = FUNC1(rphy);
	struct _sas_device *sas_device;
	unsigned long flags;
	int rc;

	FUNC3(&ioc->sas_device_lock, flags);
	sas_device = FUNC0(ioc,
	    rphy->identify.sas_address);
	if (sas_device) {
		rc = sas_device->slot;
		FUNC2(sas_device);
	} else {
		rc = -ENXIO;
	}
	FUNC4(&ioc->sas_device_lock, flags);
	return rc;
}