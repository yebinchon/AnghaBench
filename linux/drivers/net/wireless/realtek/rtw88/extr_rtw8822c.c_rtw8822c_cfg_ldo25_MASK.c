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
 int BIT_LDOE25_PON ; 
 int /*<<< orphan*/  REG_ANAPARLDO_POW_MAC ; 
 int FUNC0 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct rtw_dev *rtwdev, bool enable)
{
	u8 ldo_pwr;

	ldo_pwr = FUNC0(rtwdev, REG_ANAPARLDO_POW_MAC);
	ldo_pwr = enable ? ldo_pwr | BIT_LDOE25_PON : ldo_pwr & ~BIT_LDOE25_PON;
	FUNC1(rtwdev, REG_ANAPARLDO_POW_MAC, ldo_pwr);
}