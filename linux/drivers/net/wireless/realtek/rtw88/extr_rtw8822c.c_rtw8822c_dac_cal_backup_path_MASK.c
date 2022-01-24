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
typedef  int u8 ;
typedef  int u32 ;
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int,int,int,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct rtw_dev *rtwdev, u8 path)
{
	u32 w_off = 0x1c;
	u32 r_off = 0x2c;
	u32 w_addr, r_addr;

	if (FUNC0(path >= 2))
		return;

	/* backup I vector */
	w_addr = FUNC3(path) + 0xb0;
	r_addr = FUNC2(path) + 0x10;
	FUNC1(rtwdev, path, 0, w_addr, r_addr);

	/* backup Q vector */
	w_addr = FUNC3(path) + 0xb0 + w_off;
	r_addr = FUNC2(path) + 0x10 + r_off;
	FUNC1(rtwdev, path, 1, w_addr, r_addr);
}