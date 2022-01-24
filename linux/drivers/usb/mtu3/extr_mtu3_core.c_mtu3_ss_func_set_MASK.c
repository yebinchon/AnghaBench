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
 int /*<<< orphan*/  U3D_USB3_CONFIG ; 
 int /*<<< orphan*/  USB3_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct mtu3 *mtu, bool enable)
{
	/* If usb3_en==0, LTSSM will go to SS.Disable state */
	if (enable)
		FUNC2(mtu->mac_base, U3D_USB3_CONFIG, USB3_EN);
	else
		FUNC1(mtu->mac_base, U3D_USB3_CONFIG, USB3_EN);

	FUNC0(mtu->dev, "USB3_EN = %d\n", !!enable);
}