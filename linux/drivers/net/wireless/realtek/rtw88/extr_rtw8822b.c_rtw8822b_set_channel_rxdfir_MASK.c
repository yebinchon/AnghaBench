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
typedef  scalar_t__ u8 ;
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  REG_ACBB0 ; 
 int /*<<< orphan*/  REG_ACBBRXFIR ; 
 int /*<<< orphan*/  REG_TXDFIR ; 
 scalar_t__ RTW_CHANNEL_WIDTH_40 ; 
 scalar_t__ RTW_CHANNEL_WIDTH_80 ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC3(struct rtw_dev *rtwdev, u8 bw)
{
	if (bw == RTW_CHANNEL_WIDTH_40) {
		/* RX DFIR for BW40 */
		FUNC1(rtwdev, REG_ACBB0, FUNC0(29) | FUNC0(28), 0x1);
		FUNC1(rtwdev, REG_ACBBRXFIR, FUNC0(29) | FUNC0(28), 0x0);
		FUNC2(rtwdev, REG_TXDFIR, FUNC0(31), 0x0);
	} else if (bw == RTW_CHANNEL_WIDTH_80) {
		/* RX DFIR for BW80 */
		FUNC1(rtwdev, REG_ACBB0, FUNC0(29) | FUNC0(28), 0x2);
		FUNC1(rtwdev, REG_ACBBRXFIR, FUNC0(29) | FUNC0(28), 0x1);
		FUNC2(rtwdev, REG_TXDFIR, FUNC0(31), 0x0);
	} else {
		/* RX DFIR for BW20, BW10 and BW5*/
		FUNC1(rtwdev, REG_ACBB0, FUNC0(29) | FUNC0(28), 0x2);
		FUNC1(rtwdev, REG_ACBBRXFIR, FUNC0(29) | FUNC0(28), 0x2);
		FUNC2(rtwdev, REG_TXDFIR, FUNC0(31), 0x1);
	}
}