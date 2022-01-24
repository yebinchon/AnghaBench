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
typedef  size_t u32 ;
struct rtw_dm_info {size_t*** dack_msbk; } ;
struct rtw_dev {struct rtw_dm_info dm_info; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 size_t DACK_MSBK_BACKUP_NUM ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,size_t,size_t) ; 
 size_t FUNC2 (size_t) ; 
 size_t FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,size_t,int,int) ; 

__attribute__((used)) static bool FUNC5(struct rtw_dev *rtwdev, u8 path)
{
	struct rtw_dm_info *dm_info = &rtwdev->dm_info;
	u32 w_off = 0x1c;
	u32 r_off = 0x2c;
	u32 w_i, r_i, w_q, r_q;
	u32 value;
	u32 i;

	w_i = FUNC3(path) + 0xb0;
	r_i = FUNC2(path) + 0x08;
	w_q = FUNC3(path) + 0xb0 + w_off;
	r_q = FUNC2(path) + 0x08 + r_off;

	if (!FUNC1(rtwdev, r_i, w_i + 0x8))
		return false;

	for (i = 0; i < DACK_MSBK_BACKUP_NUM; i++) {
		FUNC4(rtwdev, w_i + 0x4, FUNC0(2), 0x0);
		value = dm_info->dack_msbk[path][0][i];
		FUNC4(rtwdev, w_i + 0x4, 0xff8, value);
		FUNC4(rtwdev, w_i, 0xf0000000, i);
		FUNC4(rtwdev, w_i + 0x4, FUNC0(2), 0x1);
	}

	FUNC4(rtwdev, w_i + 0x4, FUNC0(2), 0x0);

	if (!FUNC1(rtwdev, r_q, w_q + 0x8))
		return false;

	for (i = 0; i < DACK_MSBK_BACKUP_NUM; i++) {
		FUNC4(rtwdev, w_q + 0x4, FUNC0(2), 0x0);
		value = dm_info->dack_msbk[path][1][i];
		FUNC4(rtwdev, w_q + 0x4, 0xff8, value);
		FUNC4(rtwdev, w_q, 0xf0000000, i);
		FUNC4(rtwdev, w_q + 0x4, FUNC0(2), 0x1);
	}
	FUNC4(rtwdev, w_q + 0x4, FUNC0(2), 0x0);

	FUNC4(rtwdev, w_i + 0x8, FUNC0(26) | FUNC0(25), 0x0);
	FUNC4(rtwdev, w_q + 0x8, FUNC0(26) | FUNC0(25), 0x0);
	FUNC4(rtwdev, w_i + 0x4, FUNC0(0), 0x0);
	FUNC4(rtwdev, w_q + 0x4, FUNC0(0), 0x0);

	return true;
}