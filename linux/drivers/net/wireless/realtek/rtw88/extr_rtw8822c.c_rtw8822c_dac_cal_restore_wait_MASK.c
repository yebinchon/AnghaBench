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
typedef  scalar_t__ u32 ;
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct rtw_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,scalar_t__,int,int) ; 

__attribute__((used)) static bool FUNC3(struct rtw_dev *rtwdev,
					  u32 target_addr, u32 toggle_addr)
{
	u32 cnt = 0;

	do {
		FUNC2(rtwdev, toggle_addr, FUNC0(26) | FUNC0(25), 0x0);
		FUNC2(rtwdev, toggle_addr, FUNC0(26) | FUNC0(25), 0x2);

		if (FUNC1(rtwdev, target_addr, 0xf) == 0x6)
			return true;

	} while (cnt++ < 100);

	return false;
}