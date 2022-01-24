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
typedef  int /*<<< orphan*/  u32 ;
struct wiphy {int dummy; } ;
struct qtnf_wmac {int /*<<< orphan*/  macid; } ;
struct qtnf_vif {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct qtnf_wmac*,int /*<<< orphan*/ ) ; 
 struct qtnf_vif* FUNC2 (struct qtnf_wmac*) ; 
 struct qtnf_wmac* FUNC3 (struct wiphy*) ; 

__attribute__((used)) static int FUNC4(struct wiphy *wiphy, u32 changed)
{
	struct qtnf_wmac *mac = FUNC3(wiphy);
	struct qtnf_vif *vif;
	int ret;

	vif = FUNC2(mac);
	if (!vif) {
		FUNC0("MAC%u: primary VIF is not configured\n", mac->macid);
		return -EFAULT;
	}

	ret = FUNC1(mac, changed);
	if (ret)
		FUNC0("MAC%u: failed to update PHY params\n", mac->macid);

	return ret;
}