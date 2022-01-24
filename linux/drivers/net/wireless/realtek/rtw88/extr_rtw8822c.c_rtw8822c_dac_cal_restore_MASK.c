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
typedef  int /*<<< orphan*/  u32 ;
struct rtw_dm_info {scalar_t__*** dack_msbk; } ;
struct rtw_dev {struct rtw_dm_info dm_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t RF_PATH_A ; 
 size_t RF_PATH_B ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtw_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rtw_dev*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC8(struct rtw_dev *rtwdev)
{
	struct rtw_dm_info *dm_info = &rtwdev->dm_info;
	u32 temp[3];

	/* sample the first element for both path's IQ vector */
	if (dm_info->dack_msbk[RF_PATH_A][0][0] == 0 &&
	    dm_info->dack_msbk[RF_PATH_A][1][0] == 0 &&
	    dm_info->dack_msbk[RF_PATH_B][0][0] == 0 &&
	    dm_info->dack_msbk[RF_PATH_B][1][0] == 0)
		return false;

	temp[0] = FUNC5(rtwdev, 0x1860);
	temp[1] = FUNC5(rtwdev, 0x4160);
	temp[2] = FUNC5(rtwdev, 0x9b4);

	FUNC3(rtwdev);
	if (!FUNC2(rtwdev, 0x2808, 0x7fff80, 0xffff) ||
	    !FUNC2(rtwdev, 0x2834, 0x7fff80, 0xffff) ||
	    !FUNC2(rtwdev, 0x4508, 0x7fff80, 0xffff) ||
	    !FUNC2(rtwdev, 0x4534, 0x7fff80, 0xffff))
		return false;

	if (!FUNC1(rtwdev)) {
		FUNC4(rtwdev, "failed to restore dack vectors\n");
		return false;
	}

	FUNC7(rtwdev, 0x1830, FUNC0(30), 0x1);
	FUNC7(rtwdev, 0x4130, FUNC0(30), 0x1);
	FUNC6(rtwdev, 0x1860, temp[0]);
	FUNC6(rtwdev, 0x4160, temp[1]);
	FUNC7(rtwdev, 0x18b0, FUNC0(27), 0x1);
	FUNC7(rtwdev, 0x18cc, FUNC0(27), 0x1);
	FUNC7(rtwdev, 0x41b0, FUNC0(27), 0x1);
	FUNC7(rtwdev, 0x41cc, FUNC0(27), 0x1);
	FUNC6(rtwdev, 0x9b4, temp[2]);

	return true;
}