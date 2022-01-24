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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,char*) ; 

void FUNC4(struct rtw_dev *rtwdev, u16 addr,
				 u32 mask, u32 val)
{
	u32 shift = FUNC0(mask);
	u32 tmp;

	tmp = FUNC2(rtwdev, addr);
	tmp = (tmp & (~mask)) | ((val << shift) & mask);

	if (!FUNC1(rtwdev, addr, tmp))
		FUNC3(rtwdev, "failed to write indirect register\n");
}