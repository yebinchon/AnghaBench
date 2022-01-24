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
typedef  int u32 ;
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  MASKHWORD ; 
 int /*<<< orphan*/  MASKLWORD ; 
 int REG_NCTL0 ; 
 int REG_RXSRAM_CTL ; 
 int /*<<< orphan*/  REG_STAT_RPT ; 
 int FUNC1 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,int,int,int) ; 

__attribute__((used)) static u32 FUNC4(struct rtw_dev *rtwdev, u8 path)
{
	u32 i_val, q_val;

	FUNC2(rtwdev, REG_NCTL0, 0x8 | (path << 1));
	FUNC3(rtwdev, 0x1b48, FUNC0(14), 0x0);
	FUNC2(rtwdev, REG_RXSRAM_CTL, 0x00060001);
	FUNC2(rtwdev, 0x1b4c, 0x00000000);
	FUNC2(rtwdev, 0x1b4c, 0x00080000);

	q_val = FUNC1(rtwdev, REG_STAT_RPT, MASKHWORD);
	i_val = FUNC1(rtwdev, REG_STAT_RPT, MASKLWORD);

	if (i_val & FUNC0(15))
		i_val = 0x10000 - i_val;
	if (q_val & FUNC0(15))
		q_val = 0x10000 - q_val;

	FUNC2(rtwdev, 0x1b4c, 0x00000000);

	return i_val * i_val + q_val * q_val;
}