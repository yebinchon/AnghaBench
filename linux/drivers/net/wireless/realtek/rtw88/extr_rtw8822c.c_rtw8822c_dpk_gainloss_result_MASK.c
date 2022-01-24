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
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BIT_SUBPAGE ; 
 int REG_NCTL0 ; 
 int /*<<< orphan*/  REG_RXSRAM_CTL ; 
 int /*<<< orphan*/  REG_STAT_RPT ; 
 scalar_t__ FUNC1 (struct rtw_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u8 FUNC4(struct rtw_dev *rtwdev, u8 path)
{
	u8 result;

	FUNC3(rtwdev, REG_NCTL0, BIT_SUBPAGE, 0x8 | (path << 1));
	FUNC3(rtwdev, 0x1b48, FUNC0(14), 0x1);
	FUNC2(rtwdev, REG_RXSRAM_CTL, 0x00060000);

	result = (u8)FUNC1(rtwdev, REG_STAT_RPT, 0x000000f0);

	FUNC3(rtwdev, 0x1b48, FUNC0(14), 0x0);

	return result;
}