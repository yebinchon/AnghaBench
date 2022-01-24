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
typedef  int u8 ;
struct mvs_info {int /*<<< orphan*/  lock; } ;
struct mvs_device {int attached_phy; struct domain_device* sas_device; struct mvs_info* mvi_info; int /*<<< orphan*/  dev_type; int /*<<< orphan*/  dev_status; } ;
struct ex_phy {int /*<<< orphan*/  attached_sas_addr; } ;
struct TYPE_2__ {int num_phys; struct ex_phy* ex_phy; } ;
struct domain_device {int /*<<< orphan*/  sas_addr; TYPE_1__ ex_dev; int /*<<< orphan*/  dev_type; struct mvs_device* lldd_dev; struct domain_device* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  MVS_DEV_NORMAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__) ; 
 struct mvs_device* FUNC3 (struct mvs_info*) ; 
 struct mvs_info* FUNC4 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct domain_device *dev, int lock)
{
	unsigned long flags = 0;
	int res = 0;
	struct mvs_info *mvi = NULL;
	struct domain_device *parent_dev = dev->parent;
	struct mvs_device *mvi_device;

	mvi = FUNC4(dev);

	if (lock)
		FUNC5(&mvi->lock, flags);

	mvi_device = FUNC3(mvi);
	if (!mvi_device) {
		res = -1;
		goto found_out;
	}
	dev->lldd_dev = mvi_device;
	mvi_device->dev_status = MVS_DEV_NORMAL;
	mvi_device->dev_type = dev->dev_type;
	mvi_device->mvi_info = mvi;
	mvi_device->sas_device = dev;
	if (parent_dev && FUNC1(parent_dev->dev_type)) {
		int phy_id;
		u8 phy_num = parent_dev->ex_dev.num_phys;
		struct ex_phy *phy;
		for (phy_id = 0; phy_id < phy_num; phy_id++) {
			phy = &parent_dev->ex_dev.ex_phy[phy_id];
			if (FUNC0(phy->attached_sas_addr) ==
				FUNC0(dev->sas_addr)) {
				mvi_device->attached_phy = phy_id;
				break;
			}
		}

		if (phy_id == phy_num) {
			FUNC2("Error: no attached dev:%016llx"
				"at ex:%016llx.\n",
				FUNC0(dev->sas_addr),
				FUNC0(parent_dev->sas_addr));
			res = -1;
		}
	}

found_out:
	if (lock)
		FUNC6(&mvi->lock, flags);
	return res;
}