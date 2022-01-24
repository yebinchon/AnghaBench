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
typedef  int /*<<< orphan*/  u16 ;
struct rtw_dev {int dummy; } ;
struct rtw_backup_info {int len; int reg; int val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int,int) ; 

void FUNC3(struct rtw_dev *rtwdev,
		     struct rtw_backup_info *bckp, u32 num)
{
	u8 len;
	u32 reg;
	u32 val;
	int i;

	for (i = 0; i < num; i++, bckp++) {
		len = bckp->len;
		reg = bckp->reg;
		val = bckp->val;

		switch (len) {
		case 1:
			FUNC2(rtwdev, reg, (u8)val);
			break;
		case 2:
			FUNC0(rtwdev, reg, (u16)val);
			break;
		case 4:
			FUNC1(rtwdev, reg, (u32)val);
			break;
		default:
			break;
		}
	}
}