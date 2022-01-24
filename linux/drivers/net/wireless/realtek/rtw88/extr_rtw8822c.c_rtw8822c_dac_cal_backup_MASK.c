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
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RF_PATH_A ; 
 int /*<<< orphan*/  RF_PATH_B ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rtw_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rtw_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtw_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct rtw_dev *rtwdev)
{
	u32 temp[3];

	temp[0] = FUNC3(rtwdev, 0x1860);
	temp[1] = FUNC3(rtwdev, 0x4160);
	temp[2] = FUNC3(rtwdev, 0x9b4);

	/* set clock */
	FUNC4(rtwdev, 0x9b4, 0xdb66db00);

	/* backup path-A I/Q */
	FUNC5(rtwdev, 0x1830, FUNC0(30));
	FUNC6(rtwdev, 0x1860, 0xfc000000, 0x3c);
	FUNC2(rtwdev, RF_PATH_A);

	/* backup path-B I/Q */
	FUNC5(rtwdev, 0x4130, FUNC0(30));
	FUNC6(rtwdev, 0x4160, 0xfc000000, 0x3c);
	FUNC2(rtwdev, RF_PATH_B);

	FUNC1(rtwdev);
	FUNC7(rtwdev, 0x1830, FUNC0(30));
	FUNC7(rtwdev, 0x4130, FUNC0(30));

	FUNC4(rtwdev, 0x1860, temp[0]);
	FUNC4(rtwdev, 0x4160, temp[1]);
	FUNC4(rtwdev, 0x9b4, temp[2]);
}