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
typedef  int /*<<< orphan*/  u32 ;
struct pm8001_hba_info {int /*<<< orphan*/  lock; } ;
struct pm8001_device {scalar_t__ running_req; int /*<<< orphan*/  dev_type; int /*<<< orphan*/  device_id; } ;
struct domain_device {struct pm8001_device* lldd_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* dereg_dev_req ) (struct pm8001_hba_info*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 TYPE_1__* PM8001_CHIP_DISP ; 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct pm8001_hba_info*,struct pm8001_device*,struct domain_device*,int,int /*<<< orphan*/ ) ; 
 struct pm8001_hba_info* FUNC3 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pm8001_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct domain_device *dev)
{
	unsigned long flags = 0;
	struct pm8001_hba_info *pm8001_ha;
	struct pm8001_device *pm8001_dev = dev->lldd_dev;

	pm8001_ha = FUNC3(dev);
	FUNC6(&pm8001_ha->lock, flags);
	if (pm8001_dev) {
		u32 device_id = pm8001_dev->device_id;

		FUNC0(pm8001_ha,
			FUNC5("found dev[%d:%x] is gone.\n",
			pm8001_dev->device_id, pm8001_dev->dev_type));
		if (pm8001_dev->running_req) {
			FUNC7(&pm8001_ha->lock, flags);
			FUNC2(pm8001_ha, pm8001_dev ,
				dev, 1, 0);
			while (pm8001_dev->running_req)
				FUNC1(20);
			FUNC6(&pm8001_ha->lock, flags);
		}
		PM8001_CHIP_DISP->dereg_dev_req(pm8001_ha, device_id);
		FUNC4(pm8001_dev);
	} else {
		FUNC0(pm8001_ha,
			FUNC5("Found dev has gone.\n"));
	}
	dev->lldd_dev = NULL;
	FUNC7(&pm8001_ha->lock, flags);
}