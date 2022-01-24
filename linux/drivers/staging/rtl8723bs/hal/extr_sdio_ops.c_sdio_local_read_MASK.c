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
typedef  int s32 ;
struct TYPE_4__ {scalar_t__ bFwCurrentInPSMode; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_VAR_APFM_ON_MAC ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDIO_LOCAL_DEVICE_ID ; 
 TYPE_2__* FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct intf_hdl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct intf_hdl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

s32 FUNC9(
	struct adapter *adapter,
	u32 addr,
	u32 cnt,
	u8 *buf
)
{
	struct intf_hdl *intfhdl;
	u8 mac_pwr_ctrl_on;
	s32 err;
	u8 *tmpbuf;
	u32 n;

	intfhdl = &adapter->iopriv.intf;

	FUNC0(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);

	FUNC5(adapter, HW_VAR_APFM_ON_MAC, &mac_pwr_ctrl_on);
	if (
		(!mac_pwr_ctrl_on) ||
		(FUNC2(adapter)->bFwCurrentInPSMode)
	)
		return FUNC7(intfhdl, addr, cnt, buf);

	n = FUNC1(cnt);
	tmpbuf = FUNC6(n);
	if (!tmpbuf)
		return -1;

	err = FUNC8(intfhdl, addr, n, tmpbuf);
	if (!err)
		FUNC4(buf, tmpbuf, cnt);

	FUNC3(tmpbuf);

	return err;
}