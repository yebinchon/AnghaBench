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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SDIO_LOCAL_DEVICE_ID ; 
 int /*<<< orphan*/  FUNC1 (struct intf_hdl*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

void FUNC2(struct adapter *adapter, u32 addr, u8 v)
{
	struct intf_hdl *intfhdl = &adapter->iopriv.intf;

	FUNC0(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
	FUNC1(intfhdl, addr, 1, &v);
}