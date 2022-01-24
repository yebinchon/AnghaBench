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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct rtw_dev *rtwdev)
{
	FUNC1(rtwdev, 0x66, FUNC0(4), 0);
	FUNC1(rtwdev, 0x67, FUNC0(0), 0);
	FUNC1(rtwdev, 0x42, FUNC0(3), 0);
	FUNC1(rtwdev, 0x65, FUNC0(7), 0);
	FUNC1(rtwdev, 0x73, FUNC0(3), 0);
}