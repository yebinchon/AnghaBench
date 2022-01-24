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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ REG_DBI_FLAG_V1 ; 
 scalar_t__ REG_DBI_WDATA_V1 ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*) ; 
 scalar_t__ FUNC2 (struct rtw_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct rtw_dev *rtwdev, u16 addr, u8 data)
{
	u16 write_addr;
	u16 remainder = addr & 0x3;
	u8 flag;
	u8 cnt = 20;

	write_addr = ((addr & 0x0ffc) | (FUNC0(0) << (remainder + 12)));
	FUNC4(rtwdev, REG_DBI_WDATA_V1 + remainder, data);
	FUNC3(rtwdev, REG_DBI_FLAG_V1, write_addr);
	FUNC4(rtwdev, REG_DBI_FLAG_V1 + 2, 0x01);

	flag = FUNC2(rtwdev, REG_DBI_FLAG_V1 + 2);
	while (flag && (cnt != 0)) {
		FUNC5(10);
		flag = FUNC2(rtwdev, REG_DBI_FLAG_V1 + 2);
		cnt--;
	}

	FUNC1(flag, "DBI write fail\n");
}