#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct intf_hdl {int dummy; } ;
struct TYPE_3__ {struct intf_hdl intf; } ;
struct adapter {TYPE_1__ iopriv; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_4__ {scalar_t__ bFwCurrentInPSMode; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_VAR_APFM_ON_MAC ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SDIO_LOCAL_DEVICE_ID ; 
 TYPE_2__* FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct intf_hdl*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct intf_hdl*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC6(struct adapter *adapter, u32 addr)
{

	u8 mac_pwr_ctrl_on;
	u32 val = 0;
	struct intf_hdl *intfhdl = &adapter->iopriv.intf;
	__le32 le_tmp;

	FUNC0(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
	FUNC3(adapter, HW_VAR_APFM_ON_MAC, &mac_pwr_ctrl_on);
	if (!mac_pwr_ctrl_on || FUNC1(adapter)->bFwCurrentInPSMode) {
		FUNC4(intfhdl, addr, 4, (u8 *)&le_tmp);
		val = FUNC2(le_tmp);
	} else {
		val = FUNC5(intfhdl, addr, NULL);
	}
	return val;
}