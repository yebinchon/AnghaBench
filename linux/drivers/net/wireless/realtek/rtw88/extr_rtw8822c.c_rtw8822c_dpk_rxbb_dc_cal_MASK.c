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
 int /*<<< orphan*/  RFREG_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct rtw_dev *rtwdev, u8 path)
{
	FUNC0(rtwdev, path, 0x92, RFREG_MASK, 0x84800);
	FUNC1(5);
	FUNC0(rtwdev, path, 0x92, RFREG_MASK, 0x84801);
	FUNC2(600, 610);
	FUNC0(rtwdev, path, 0x92, RFREG_MASK, 0x84800);
}