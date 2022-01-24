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
typedef  int u16 ;
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RF_PATH_A ; 
 int /*<<< orphan*/  RF_PATH_B ; 
 scalar_t__ FUNC0 (struct rtw_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct rtw_dev *rtwdev)
{
	u8 reg_a, reg_b;
	u16 count = 0;

	FUNC2(rtwdev, 0x522, 0xff);
	FUNC1(rtwdev, 0x1e70, 0xf, 0x2);

	do {
		reg_a = (u8)FUNC0(rtwdev, RF_PATH_A, 0x00, 0xf0000);
		reg_b = (u8)FUNC0(rtwdev, RF_PATH_B, 0x00, 0xf0000);
		FUNC3(2);
		count++;
	} while ((reg_a == 2 || reg_b == 2) && count < 2500);
}