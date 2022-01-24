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
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int BIT_CPU_CLK_EN ; 
 int BIT_WL_PLATFORM_RST ; 
 scalar_t__ REG_CPU_DMEM_CON ; 
 scalar_t__ REG_SYS_CLK_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC2(struct rtw_dev *rtwdev)
{
	FUNC0(rtwdev, REG_CPU_DMEM_CON + 2, BIT_WL_PLATFORM_RST >> 16);
	FUNC0(rtwdev, REG_SYS_CLK_CTRL + 1, BIT_CPU_CLK_EN >> 8);
	FUNC1(rtwdev, REG_CPU_DMEM_CON + 2, BIT_WL_PLATFORM_RST >> 16);
	FUNC1(rtwdev, REG_SYS_CLK_CTRL + 1, BIT_CPU_CLK_EN >> 8);
}