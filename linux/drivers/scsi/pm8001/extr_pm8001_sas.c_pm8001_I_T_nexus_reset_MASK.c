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
struct sas_phy {int dummy; } ;
struct pm8001_hba_info {int dummy; } ;
struct pm8001_device {int /*<<< orphan*/  device_id; } ;
struct domain_device {struct pm8001_device* lldd_dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int TMF_RESP_FUNC_FAILED ; 
 scalar_t__ FUNC1 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct pm8001_hba_info*,struct pm8001_device*,struct domain_device*,int,int /*<<< orphan*/ ) ; 
 struct pm8001_hba_info* FUNC4 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 struct sas_phy* FUNC6 (struct domain_device*) ; 
 int FUNC7 (struct sas_phy*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sas_phy*) ; 
 scalar_t__ FUNC9 (struct sas_phy*) ; 

int FUNC10(struct domain_device *dev)
{
	int rc = TMF_RESP_FUNC_FAILED;
	struct pm8001_device *pm8001_dev;
	struct pm8001_hba_info *pm8001_ha;
	struct sas_phy *phy;

	if (!dev || !dev->lldd_dev)
		return -ENODEV;

	pm8001_dev = dev->lldd_dev;
	pm8001_ha = FUNC4(dev);
	phy = FUNC6(dev);

	if (FUNC1(dev)) {
		if (FUNC9(phy)) {
			rc = 0;
			goto out;
		}
		rc = FUNC7(phy, 1);
		if (rc) {
			FUNC0(pm8001_ha,
			FUNC5("phy reset failed for device %x\n"
			"with rc %d\n", pm8001_dev->device_id, rc));
			rc = TMF_RESP_FUNC_FAILED;
			goto out;
		}
		FUNC2(2000);
		rc = FUNC3(pm8001_ha, pm8001_dev ,
			dev, 1, 0);
		if (rc) {
			FUNC0(pm8001_ha,
			FUNC5("task abort failed %x\n"
			"with rc %d\n", pm8001_dev->device_id, rc));
			rc = TMF_RESP_FUNC_FAILED;
		}
	} else {
		rc = FUNC7(phy, 1);
		FUNC2(2000);
	}
	FUNC0(pm8001_ha, FUNC5(" for device[%x]:rc=%d\n",
		pm8001_dev->device_id, rc));
 out:
	FUNC8(phy);
	return rc;
}