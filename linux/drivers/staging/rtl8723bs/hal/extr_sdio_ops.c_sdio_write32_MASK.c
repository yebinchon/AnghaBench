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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct intf_hdl {struct adapter* padapter; } ;
struct adapter {int dummy; } ;
typedef  scalar_t__ s32 ;
typedef  scalar_t__ __le32 ;
struct TYPE_2__ {scalar_t__ bFwCurrentInPSMode; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_VAR_APFM_ON_MAC ; 
 scalar_t__ WLAN_IOREG_DEVICE_ID ; 
 int FUNC0 (int,scalar_t__*,int*) ; 
 TYPE_1__* FUNC1 (struct adapter*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC4 (struct intf_hdl*,int,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct intf_hdl*,int,int,scalar_t__*) ; 

__attribute__((used)) static s32 FUNC6(struct intf_hdl *intfhdl, u32 addr, u32 val)
{
	struct adapter *adapter;
	u8 mac_pwr_ctrl_on;
	u8 device_id;
	u16 offset;
	u32 ftaddr;
	u8 shift;
	s32 err;
	__le32 le_tmp;

	adapter = intfhdl->padapter;
	err = 0;

	ftaddr = FUNC0(addr, &device_id, &offset);

	FUNC3(adapter, HW_VAR_APFM_ON_MAC, &mac_pwr_ctrl_on);
	if (
		((device_id == WLAN_IOREG_DEVICE_ID) && (offset < 0x100)) ||
		(!mac_pwr_ctrl_on) ||
		(FUNC1(adapter)->bFwCurrentInPSMode)
	) {
		le_tmp = FUNC2(val);

		return FUNC4(intfhdl, ftaddr, 4, (u8 *)&le_tmp);
	}

	/*  4 bytes alignment */
	shift = ftaddr & 0x3;
	if (shift == 0) {
		FUNC5(intfhdl, ftaddr, val, &err);
	} else {
		le_tmp = FUNC2(val);
		err = FUNC4(intfhdl, ftaddr, 4, (u8 *)&le_tmp);
	}
	return err;
}