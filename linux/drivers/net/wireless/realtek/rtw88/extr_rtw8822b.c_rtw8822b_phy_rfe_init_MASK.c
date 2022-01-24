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
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int,int,int) ; 

__attribute__((used)) static void FUNC2(struct rtw_dev *rtwdev)
{
	/* chip top mux */
	FUNC1(rtwdev, 0x64, FUNC0(29) | FUNC0(28), 0x3);
	FUNC1(rtwdev, 0x4c, FUNC0(26) | FUNC0(25), 0x0);
	FUNC1(rtwdev, 0x40, FUNC0(2), 0x1);

	/* from s0 or s1 */
	FUNC1(rtwdev, 0x1990, 0x3f, 0x30);
	FUNC1(rtwdev, 0x1990, (FUNC0(11) | FUNC0(10)), 0x3);

	/* input or output */
	FUNC1(rtwdev, 0x974, 0x3f, 0x3f);
	FUNC1(rtwdev, 0x974, (FUNC0(11) | FUNC0(10)), 0x3);
}