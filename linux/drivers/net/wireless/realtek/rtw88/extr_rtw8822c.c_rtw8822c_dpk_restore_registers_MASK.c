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
typedef  int /*<<< orphan*/  u32 ;
struct rtw_dev {int dummy; } ;
struct rtw_backup_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_DPD_CLK ; 
 int /*<<< orphan*/  BIT_SUBPAGE ; 
 int /*<<< orphan*/  REG_NCTL0 ; 
 int /*<<< orphan*/  REG_RXSRAM_CTL ; 
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,struct rtw_backup_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct rtw_dev *rtwdev, u32 reg_num,
			       struct rtw_backup_info *bckp)
{
	FUNC0(rtwdev, bckp, reg_num);
	FUNC1(rtwdev, REG_NCTL0, BIT_SUBPAGE, 0xc);
	FUNC1(rtwdev, REG_RXSRAM_CTL, BIT_DPD_CLK, 0x4);
}