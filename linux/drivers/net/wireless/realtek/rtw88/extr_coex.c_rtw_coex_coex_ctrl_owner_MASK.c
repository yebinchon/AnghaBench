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
 int /*<<< orphan*/  BIT_LTE_MUX_CTRL_PATH ; 
 int /*<<< orphan*/  REG_SYS_SDIO_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct rtw_dev *rtwdev, bool wifi_control)
{
	if (wifi_control)
		FUNC1(rtwdev, REG_SYS_SDIO_CTRL, BIT_LTE_MUX_CTRL_PATH);
	else
		FUNC0(rtwdev, REG_SYS_SDIO_CTRL, BIT_LTE_MUX_CTRL_PATH);
}