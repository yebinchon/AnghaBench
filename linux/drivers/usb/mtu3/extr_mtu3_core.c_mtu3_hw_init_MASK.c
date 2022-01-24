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
struct mtu3 {scalar_t__ hw_version; int gen2cp; int is_u3_ip; int /*<<< orphan*/  dev; int /*<<< orphan*/  ippc_base; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MTU3_TRUNK_VERS_1003 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  U3D_SSUSB_IP_DEV_CAP ; 
 int /*<<< orphan*/  U3D_SSUSB_IP_TRUNK_VERS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__,char*) ; 
 int FUNC4 (struct mtu3*) ; 
 int /*<<< orphan*/  FUNC5 (struct mtu3*) ; 
 int FUNC6 (struct mtu3*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mtu3*) ; 

__attribute__((used)) static int FUNC9(struct mtu3 *mtu)
{
	u32 value;
	int ret;

	value = FUNC7(mtu->ippc_base, U3D_SSUSB_IP_TRUNK_VERS);
	mtu->hw_version = FUNC0(value);
	mtu->gen2cp = !!(mtu->hw_version >= MTU3_TRUNK_VERS_1003);

	value = FUNC7(mtu->ippc_base, U3D_SSUSB_IP_DEV_CAP);
	mtu->is_u3_ip = !!FUNC1(value);

	FUNC3(mtu->dev, "IP version 0x%x(%s IP)\n", mtu->hw_version,
		mtu->is_u3_ip ? "U3" : "U2");

	FUNC5(mtu);

	ret = FUNC4(mtu);
	if (ret) {
		FUNC2(mtu->dev, "device enable failed %d\n", ret);
		return ret;
	}

	ret = FUNC6(mtu);
	if (ret)
		return -ENOMEM;

	FUNC8(mtu);

	return 0;
}