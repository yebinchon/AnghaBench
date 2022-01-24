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
typedef  int u32 ;
struct rtw_table {int dummy; } ;
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

void FUNC5(struct rtw_dev *rtwdev, const struct rtw_table *tbl,
		    u32 addr, u32 data)
{
	if (addr == 0xfe)
		FUNC1(50);
	else if (addr == 0xfd)
		FUNC0(5);
	else if (addr == 0xfc)
		FUNC0(1);
	else if (addr == 0xfb)
		FUNC4(50, 60);
	else if (addr == 0xfa)
		FUNC3(5);
	else if (addr == 0xf9)
		FUNC3(1);
	else
		FUNC2(rtwdev, addr, data);
}