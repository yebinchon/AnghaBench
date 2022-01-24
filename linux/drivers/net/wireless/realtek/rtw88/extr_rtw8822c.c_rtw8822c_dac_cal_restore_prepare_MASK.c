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
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,int,int,int) ; 

__attribute__((used)) static void FUNC4(struct rtw_dev *rtwdev)
{
	FUNC2(rtwdev, 0x9b4, 0xdb66db00);

	FUNC3(rtwdev, 0x18b0, FUNC0(27), 0x0);
	FUNC3(rtwdev, 0x18cc, FUNC0(27), 0x0);
	FUNC3(rtwdev, 0x41b0, FUNC0(27), 0x0);
	FUNC3(rtwdev, 0x41cc, FUNC0(27), 0x0);

	FUNC3(rtwdev, 0x1830, FUNC0(30), 0x0);
	FUNC3(rtwdev, 0x1860, 0xfc000000, 0x3c);
	FUNC3(rtwdev, 0x18b4, FUNC0(0), 0x1);
	FUNC3(rtwdev, 0x18d0, FUNC0(0), 0x1);

	FUNC3(rtwdev, 0x4130, FUNC0(30), 0x0);
	FUNC3(rtwdev, 0x4160, 0xfc000000, 0x3c);
	FUNC3(rtwdev, 0x41b4, FUNC0(0), 0x1);
	FUNC3(rtwdev, 0x41d0, FUNC0(0), 0x1);

	FUNC3(rtwdev, 0x18b0, 0xf00, 0x0);
	FUNC3(rtwdev, 0x18c0, FUNC0(14), 0x0);
	FUNC3(rtwdev, 0x18cc, 0xf00, 0x0);
	FUNC3(rtwdev, 0x18dc, FUNC0(14), 0x0);

	FUNC3(rtwdev, 0x18b0, FUNC0(0), 0x0);
	FUNC3(rtwdev, 0x18cc, FUNC0(0), 0x0);
	FUNC3(rtwdev, 0x18b0, FUNC0(0), 0x1);
	FUNC3(rtwdev, 0x18cc, FUNC0(0), 0x1);

	FUNC1(rtwdev);

	FUNC3(rtwdev, 0x18c0, 0x38000, 0x7);
	FUNC3(rtwdev, 0x18dc, 0x38000, 0x7);
	FUNC3(rtwdev, 0x41c0, 0x38000, 0x7);
	FUNC3(rtwdev, 0x41dc, 0x38000, 0x7);

	FUNC3(rtwdev, 0x18b8, FUNC0(26) | FUNC0(25), 0x1);
	FUNC3(rtwdev, 0x18d4, FUNC0(26) | FUNC0(25), 0x1);

	FUNC3(rtwdev, 0x41b0, 0xf00, 0x0);
	FUNC3(rtwdev, 0x41c0, FUNC0(14), 0x0);
	FUNC3(rtwdev, 0x41cc, 0xf00, 0x0);
	FUNC3(rtwdev, 0x41dc, FUNC0(14), 0x0);

	FUNC3(rtwdev, 0x41b0, FUNC0(0), 0x0);
	FUNC3(rtwdev, 0x41cc, FUNC0(0), 0x0);
	FUNC3(rtwdev, 0x41b0, FUNC0(0), 0x1);
	FUNC3(rtwdev, 0x41cc, FUNC0(0), 0x1);

	FUNC3(rtwdev, 0x41b8, FUNC0(26) | FUNC0(25), 0x1);
	FUNC3(rtwdev, 0x41d4, FUNC0(26) | FUNC0(25), 0x1);
}