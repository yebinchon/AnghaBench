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
struct rtw_dm_info {int* dack_adck; } ;
struct rtw_dev {struct rtw_dm_info dm_info; } ;

/* Variables and functions */
 size_t RF_PATH_A ; 
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (size_t) ; 
 int FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_dev*,int,int) ; 

__attribute__((used)) static void FUNC6(struct rtw_dev *rtwdev, u8 path)
{
	struct rtw_dm_info *dm_info = &rtwdev->dm_info;
	u32 base_addr;
	u32 read_addr;

	base_addr = FUNC3(path);
	read_addr = FUNC2(path);

	FUNC5(rtwdev, base_addr + 0x68, dm_info->dack_adck[path]);
	FUNC5(rtwdev, base_addr + 0x0c, 0xdff00220);
	if (path == RF_PATH_A) {
		FUNC5(rtwdev, base_addr + 0x60, 0xf0040ff0);
		FUNC5(rtwdev, 0x1c38, 0xffffffff);
	}
	FUNC5(rtwdev, base_addr + 0x10, 0x02d508c5);
	FUNC5(rtwdev, 0x9b4, 0xdb66db00);
	FUNC5(rtwdev, base_addr + 0xb0, 0x0a11fb88);
	FUNC5(rtwdev, base_addr + 0xbc, 0x0008ff81);
	FUNC5(rtwdev, base_addr + 0xc0, 0x0003d208);
	FUNC5(rtwdev, base_addr + 0xcc, 0x0a11fb88);
	FUNC5(rtwdev, base_addr + 0xd8, 0x0008ff81);
	FUNC5(rtwdev, base_addr + 0xdc, 0x0003d208);
	FUNC5(rtwdev, base_addr + 0xb8, 0x60000000);
	FUNC1(2);
	FUNC5(rtwdev, base_addr + 0xbc, 0x000aff8d);
	FUNC1(2);
	FUNC5(rtwdev, base_addr + 0xb0, 0x0a11fb89);
	FUNC5(rtwdev, base_addr + 0xcc, 0x0a11fb89);
	FUNC1(1);
	FUNC5(rtwdev, base_addr + 0xb8, 0x62000000);
	FUNC5(rtwdev, base_addr + 0xd4, 0x62000000);
	FUNC1(20);
	if (!FUNC0(rtwdev, read_addr + 0x08, 0x7fff80, 0xffff) ||
	    !FUNC0(rtwdev, read_addr + 0x34, 0x7fff80, 0xffff))
		FUNC4(rtwdev, "failed to wait for dack ready\n");
	FUNC5(rtwdev, base_addr + 0xb8, 0x02000000);
	FUNC1(1);
	FUNC5(rtwdev, base_addr + 0xbc, 0x0008ff87);
	FUNC5(rtwdev, 0x9b4, 0xdb6db600);
	FUNC5(rtwdev, base_addr + 0x10, 0x02d508c5);
	FUNC5(rtwdev, base_addr + 0xbc, 0x0008ff87);
	FUNC5(rtwdev, base_addr + 0x60, 0xf0000000);
}