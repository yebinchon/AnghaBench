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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct intf_hdl {int dummy; } ;
struct TYPE_2__ {struct intf_hdl intf; } ;
struct adapter {TYPE_1__ iopriv; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  HW_VAR_APFM_ON_MAC ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDIO_LOCAL_DEVICE_ID ; 
 int FUNC2 (struct intf_hdl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct intf_hdl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC8(
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

	FUNC6(adapter, HW_VAR_APFM_ON_MAC, &mac_pwr_ctrl_on);
	if (!mac_pwr_ctrl_on)
		return FUNC2(intfhdl, addr, cnt, buf);

	n = FUNC1(cnt);
	tmpbuf = FUNC7(n);
	if (!tmpbuf)
		return -1;

	err = FUNC3(intfhdl, addr, n, tmpbuf);
	if (!err)
		FUNC5(buf, tmpbuf, cnt);

	FUNC4(tmpbuf);

	return err;
}