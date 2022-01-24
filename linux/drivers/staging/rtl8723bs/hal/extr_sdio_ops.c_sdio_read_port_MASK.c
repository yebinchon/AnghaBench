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
typedef  scalar_t__ u32 ;
struct sdio_data {scalar_t__ block_transfer_len; } ;
struct intf_hdl {struct adapter* padapter; } ;
struct hal_com_data {int /*<<< orphan*/  SdioRxFIFOCnt; } ;
struct adapter {int dummy; } ;
typedef  scalar_t__ s32 ;
struct TYPE_2__ {struct sdio_data intf_data; } ;

/* Variables and functions */
 struct hal_com_data* FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ _FAIL ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ _SUCCESS ; 
 scalar_t__ FUNC3 (struct intf_hdl*,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (struct adapter*) ; 

__attribute__((used)) static u32 FUNC5(
	struct intf_hdl *intfhdl,
	u32 addr,
	u32 cnt,
	u8 *mem
)
{
	struct adapter *adapter;
	struct sdio_data *psdio;
	struct hal_com_data *hal;
	u32 oldcnt;
	s32 err;


	adapter = intfhdl->padapter;
	psdio = &FUNC4(adapter)->intf_data;
	hal = FUNC0(adapter);

	FUNC1(adapter, addr, hal->SdioRxFIFOCnt++, &addr);

	oldcnt = cnt;
	if (cnt > psdio->block_transfer_len)
		cnt = FUNC2(cnt, psdio->block_transfer_len);
/* 	cnt = sdio_align_size(cnt); */

	err = FUNC3(intfhdl, addr, cnt, mem);

	if (err)
		return _FAIL;
	return _SUCCESS;
}