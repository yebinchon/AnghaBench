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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct adapter {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_READ_EFUSE_MAP ; 
 scalar_t__ REG_PKT_BUFF_ACCESS_CTRL ; 
 scalar_t__ REG_TDECTRL ; 
 int /*<<< orphan*/  TXPKT_BUF_SELECT ; 
 scalar_t__ _FAIL ; 
 scalar_t__ _SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC5(struct adapter *padapter, u8 txpktbuf_bndy, u16 offset, u16 size_byte, u8 *logical_map)
{
	s32 status = _FAIL;
	u8 physical_map[512];
	u16 size = 512;

	FUNC4(padapter, REG_TDECTRL + 1, txpktbuf_bndy);
	FUNC3(physical_map, 0xFF, 512);
	FUNC4(padapter, REG_PKT_BUFF_ACCESS_CTRL, TXPKT_BUF_SELECT);
	status = FUNC2(padapter, CMD_READ_EFUSE_MAP);
	if (status == _SUCCESS)
		FUNC1(padapter, txpktbuf_bndy, physical_map, &size);
	FUNC0(physical_map, offset, size_byte, logical_map);
	return status;
}