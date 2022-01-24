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
struct ex_phy {int dummy; } ;
struct domain_device {scalar_t__ dev_type; } ;

/* Variables and functions */
 scalar_t__ SAS_SATA_PENDING ; 
 int FUNC0 (struct domain_device*,struct ex_phy*) ; 

__attribute__((used)) static int FUNC1(struct domain_device *dev, struct ex_phy *phy)
{
	int res;

	/* we weren't pending, so successfully end the reset sequence now */
	if (dev->dev_type != SAS_SATA_PENDING)
		return 1;

	/* hmmm, if this succeeds do we need to repost the domain_device to the
	 * lldd so it can pick up new parameters?
	 */
	res = FUNC0(dev, phy);
	if (res)
		return 0; /* retry */
	else
		return 1;
}