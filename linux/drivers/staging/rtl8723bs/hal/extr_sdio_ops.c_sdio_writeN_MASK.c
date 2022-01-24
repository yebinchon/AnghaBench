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
typedef  int s32 ;
struct TYPE_2__ {scalar_t__ bFwCurrentInPSMode; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_VAR_APFM_ON_MAC ; 
 scalar_t__ WLAN_IOREG_DEVICE_ID ; 
 int FUNC0 (int,scalar_t__*,int*) ; 
 TYPE_1__* FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__* FUNC5 (int) ; 
 int FUNC6 (struct intf_hdl*,int,int,scalar_t__*) ; 
 int FUNC7 (struct intf_hdl*,int,int,scalar_t__*) ; 
 int FUNC8 (struct intf_hdl*,int,int,scalar_t__*) ; 

__attribute__((used)) static s32 FUNC9(struct intf_hdl *intfhdl, u32 addr, u32 cnt, u8 *buf)
{
	struct adapter *adapter;
	u8 mac_pwr_ctrl_on;
	u8 device_id;
	u16 offset;
	u32 ftaddr;
	u8 shift;
	s32 err;

	adapter = intfhdl->padapter;
	err = 0;

	ftaddr = FUNC0(addr, &device_id, &offset);

	FUNC4(adapter, HW_VAR_APFM_ON_MAC, &mac_pwr_ctrl_on);
	if (
		((device_id == WLAN_IOREG_DEVICE_ID) && (offset < 0x100)) ||
		(!mac_pwr_ctrl_on) ||
		(FUNC1(adapter)->bFwCurrentInPSMode)
	)
		return FUNC6(intfhdl, ftaddr, cnt, buf);

	shift = ftaddr & 0x3;
	if (shift == 0) {
		err = FUNC8(intfhdl, ftaddr, cnt, buf);
	} else {
		u8 *tmpbuf;
		u32 n;

		ftaddr &= ~(u16)0x3;
		n = cnt + shift;
		tmpbuf = FUNC5(n);
		if (!tmpbuf)
			return -1;
		err = FUNC7(intfhdl, ftaddr, 4, tmpbuf);
		if (err) {
			FUNC2(tmpbuf);
			return err;
		}
		FUNC3(tmpbuf + shift, buf, cnt);
		err = FUNC8(intfhdl, ftaddr, n, tmpbuf);
		FUNC2(tmpbuf);
	}
	return err;
}