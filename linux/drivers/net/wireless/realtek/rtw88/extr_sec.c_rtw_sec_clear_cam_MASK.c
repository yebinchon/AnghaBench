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
typedef  size_t u8 ;
typedef  int u32 ;
struct rtw_sec_desc {int /*<<< orphan*/  cam_map; struct rtw_cam_entry* cam_table; } ;
struct rtw_dev {int dummy; } ;
struct rtw_cam_entry {int valid; int /*<<< orphan*/  addr; int /*<<< orphan*/ * key; } ;

/* Variables and functions */
 size_t RTW_SEC_CAM_ENTRY_SHIFT ; 
 int RTW_SEC_CMD_POLLING ; 
 int /*<<< orphan*/  RTW_SEC_CMD_REG ; 
 int RTW_SEC_CMD_WRITE_ENABLE ; 
 int /*<<< orphan*/  RTW_SEC_WRITE_REG ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct rtw_dev *rtwdev,
		       struct rtw_sec_desc *sec,
		       u8 hw_key_idx)
{
	struct rtw_cam_entry *cam = &sec->cam_table[hw_key_idx];
	u32 write_cmd;
	u32 command;
	u32 addr;

	FUNC0(hw_key_idx, sec->cam_map);
	cam->valid = false;
	cam->key = NULL;
	FUNC1(cam->addr);

	write_cmd = RTW_SEC_CMD_WRITE_ENABLE | RTW_SEC_CMD_POLLING;
	addr = hw_key_idx << RTW_SEC_CAM_ENTRY_SHIFT;
	command = write_cmd | addr;
	FUNC2(rtwdev, RTW_SEC_WRITE_REG, 0);
	FUNC2(rtwdev, RTW_SEC_CMD_REG, command);
}