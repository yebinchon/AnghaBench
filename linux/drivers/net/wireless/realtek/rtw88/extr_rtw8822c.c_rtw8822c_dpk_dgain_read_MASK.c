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
typedef  scalar_t__ u16 ;
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int BIT_SUBPAGE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  REG_NCTL0 ; 
 int /*<<< orphan*/  REG_RXSRAM_CTL ; 
 int /*<<< orphan*/  REG_STAT_RPT ; 
 scalar_t__ FUNC1 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static u16 FUNC3(struct rtw_dev *rtwdev, u8 path)
{
	u16 dgain;

	FUNC2(rtwdev, REG_NCTL0, BIT_SUBPAGE, 0xc);
	FUNC2(rtwdev, REG_RXSRAM_CTL, 0x00ff0000, 0x0);

	dgain = (u16)FUNC1(rtwdev, REG_STAT_RPT, FUNC0(27, 16));

	return dgain;
}