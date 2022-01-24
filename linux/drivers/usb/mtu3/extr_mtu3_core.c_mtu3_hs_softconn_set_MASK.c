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
struct mtu3 {int /*<<< orphan*/  dev; int /*<<< orphan*/  mac_base; } ;

/* Variables and functions */
 int SOFT_CONN ; 
 int SUSPENDM_ENABLE ; 
 int /*<<< orphan*/  U3D_POWER_MANAGEMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC3(struct mtu3 *mtu, bool enable)
{
	if (enable) {
		FUNC2(mtu->mac_base, U3D_POWER_MANAGEMENT,
			SOFT_CONN | SUSPENDM_ENABLE);
	} else {
		FUNC1(mtu->mac_base, U3D_POWER_MANAGEMENT,
			SOFT_CONN | SUSPENDM_ENABLE);
	}
	FUNC0(mtu->dev, "SOFTCONN = %d\n", !!enable);
}