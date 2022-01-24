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
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,int,int) ; 

__attribute__((used)) static void FUNC4(struct rtw_dev *rtwdev)
{
	FUNC2(rtwdev, 0x1d58, 0xff8, 0x1ff);
	FUNC2(rtwdev, 0x1a00, 0x3, 0x2);
	FUNC2(rtwdev, 0x1a14, 0x300, 0x3);
	FUNC1(rtwdev, 0x1d70, 0x7e7e7e7e);
	FUNC2(rtwdev, 0x180c, 0x3, 0x0);
	FUNC2(rtwdev, 0x410c, 0x3, 0x0);
	FUNC1(rtwdev, 0x1b00, 0x00000008);
	FUNC3(rtwdev, 0x1bcc, 0x3f);
	FUNC1(rtwdev, 0x1b00, 0x0000000a);
	FUNC3(rtwdev, 0x1bcc, 0x3f);
	FUNC2(rtwdev, 0x1e24, FUNC0(31), 0x0);
	FUNC2(rtwdev, 0x1e28, 0xf, 0x3);
}