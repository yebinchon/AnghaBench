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
struct rtw_table {int /*<<< orphan*/  rf_path; } ;
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RFREG_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

void FUNC4(struct rtw_dev *rtwdev, const struct rtw_table *tbl,
		    u32 addr, u32 data)
{
	if (addr == 0xffe) {
		FUNC0(50);
	} else if (addr == 0xfe) {
		FUNC3(100, 110);
	} else {
		FUNC1(rtwdev, tbl->rf_path, addr, RFREG_MASK, data);
		FUNC2(1);
	}
}