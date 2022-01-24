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
typedef  scalar_t__ u32 ;
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,scalar_t__,int,int) ; 

__attribute__((used)) static void FUNC4(struct rtw_dev *rtwdev, u8 path)
{
	u32 base_addr = FUNC1(path);

	FUNC2(rtwdev, base_addr + 0x68, 0x0);
	FUNC2(rtwdev, base_addr + 0x10, 0x02d508c4);
	FUNC3(rtwdev, base_addr + 0xbc, 0x1, 0x0);
	FUNC3(rtwdev, base_addr + 0x30, FUNC0(30), 0x1);
}