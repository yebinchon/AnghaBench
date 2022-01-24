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
struct sas_phy {int /*<<< orphan*/  dev; } ;
struct domain_device {scalar_t__ dev_type; int tproto; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  NEXUS_PHASE_POST ; 
 int /*<<< orphan*/  NEXUS_PHASE_PRE ; 
 int /*<<< orphan*/  NEXUS_PHASE_RESUME ; 
 int SAS_PROTOCOL_STP ; 
 scalar_t__ SAS_SATA_DEV ; 
 int TC_RESUME ; 
 int TMF_RESP_FUNC_COMPLETE ; 
 int TMF_RESP_FUNC_FAILED ; 
 int FUNC1 (struct domain_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct sas_phy* FUNC5 (struct domain_device*) ; 
 int FUNC6 (struct sas_phy*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sas_phy*) ; 

int FUNC8(struct domain_device *dev)
{
	int res, tmp_res, i;
	struct sas_phy *phy = FUNC5(dev);
	/* Standard mandates link reset for ATA  (type 0) and
	 * hard reset for SSP (type 1) */
	int reset_type = (dev->dev_type == SAS_SATA_DEV ||
			  (dev->tproto & SAS_PROTOCOL_STP)) ? 0 : 1;

	FUNC1(dev, NEXUS_PHASE_PRE);
	/* send a hard reset */
	FUNC0("sending %s reset to %s\n",
		    reset_type ? "hard" : "soft", FUNC2(&phy->dev));
	res = FUNC6(phy, reset_type);
	if (res == TMF_RESP_FUNC_COMPLETE || res == -ENODEV) {
		/* wait for the maximum settle time */
		FUNC4(500);
		/* clear all outstanding commands (keep nexus suspended) */
		FUNC1(dev, NEXUS_PHASE_POST);
	}
	for (i = 0 ; i < 3; i++) {
		tmp_res = FUNC1(dev, NEXUS_PHASE_RESUME);
		if (tmp_res == TC_RESUME)
			goto out;
		FUNC4(500);
	}

	/* This is a bit of a problem:  the sequencer is still suspended
	 * and is refusing to resume.  Hope it will resume on a bigger hammer
	 * or the disk is lost */
	FUNC3(KERN_ERR, &phy->dev,
		   "Failed to resume nexus after reset 0x%x\n", tmp_res);

	res = TMF_RESP_FUNC_FAILED;
 out:
	FUNC7(phy);
	return res;
}