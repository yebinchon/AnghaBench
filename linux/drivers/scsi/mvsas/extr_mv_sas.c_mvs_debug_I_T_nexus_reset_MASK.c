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
struct domain_device {scalar_t__ dev_type; int tproto; } ;

/* Variables and functions */
 int SAS_PROTOCOL_STP ; 
 scalar_t__ SAS_SATA_DEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct sas_phy* FUNC1 (struct domain_device*) ; 
 int FUNC2 (struct sas_phy*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sas_phy*) ; 

__attribute__((used)) static int FUNC4(struct domain_device *dev)
{
	int rc;
	struct sas_phy *phy = FUNC1(dev);
	int reset_type = (dev->dev_type == SAS_SATA_DEV ||
			(dev->tproto & SAS_PROTOCOL_STP)) ? 0 : 1;
	rc = FUNC2(phy, reset_type);
	FUNC3(phy);
	FUNC0(2000);
	return rc;
}