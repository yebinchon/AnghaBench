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
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SDIO_LOCAL_DEVICE_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intf_hdl*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct adapter *adapter, u32 addr, u32 v)
{
	struct intf_hdl *intfhdl = &adapter->iopriv.intf;
	__le32 le_tmp;

	FUNC0(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
	le_tmp = FUNC1(v);
	FUNC2(intfhdl, addr, 4, (u8 *)&le_tmp);
}