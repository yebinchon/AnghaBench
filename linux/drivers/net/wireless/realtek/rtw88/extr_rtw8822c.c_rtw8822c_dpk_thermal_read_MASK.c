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
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RF_T_METER ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static u8 FUNC4(struct rtw_dev *rtwdev, u8 path)
{
	FUNC2(rtwdev, path, RF_T_METER, FUNC0(19), 0x1);
	FUNC2(rtwdev, path, RF_T_METER, FUNC0(19), 0x0);
	FUNC2(rtwdev, path, RF_T_METER, FUNC0(19), 0x1);
	FUNC3(15);

	return (u8)FUNC1(rtwdev, path, RF_T_METER, 0x0007e);
}