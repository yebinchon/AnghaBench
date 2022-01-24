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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  REG_RXSRAM_CTL ; 
 int /*<<< orphan*/  REG_STAT_RPT ; 
 scalar_t__ FUNC2 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u8 FUNC4(struct rtw_dev *rtwdev, u8 path)
{
	u16 dc_i, dc_q;
	u8 corr_val, corr_idx;

	FUNC3(rtwdev, REG_RXSRAM_CTL, 0x000900f0);
	dc_i = (u16)FUNC2(rtwdev, REG_STAT_RPT, FUNC1(27, 16));
	dc_q = (u16)FUNC2(rtwdev, REG_STAT_RPT, FUNC1(11, 0));

	if (dc_i & FUNC0(11))
		dc_i = 0x1000 - dc_i;
	if (dc_q & FUNC0(11))
		dc_q = 0x1000 - dc_q;

	FUNC3(rtwdev, REG_RXSRAM_CTL, 0x000000f0);
	corr_idx = (u8)FUNC2(rtwdev, REG_STAT_RPT, FUNC1(7, 0));
	corr_val = (u8)FUNC2(rtwdev, REG_STAT_RPT, FUNC1(15, 8));

	if (dc_i > 200 || dc_q > 200 || corr_idx < 40 || corr_idx > 65)
		return 1;
	else
		return 0;

}