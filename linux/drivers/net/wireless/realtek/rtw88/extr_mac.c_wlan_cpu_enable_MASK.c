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
 int /*<<< orphan*/  BIT_FEN_CPUEN ; 
 int /*<<< orphan*/  BIT_WLMCU_IOIF ; 
 scalar_t__ REG_RSV_CTRL ; 
 scalar_t__ REG_SYS_FUNC_EN ; 
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct rtw_dev *rtwdev, bool enable)
{
	if (enable) {
		/* cpu io interface enable */
		FUNC1(rtwdev, REG_RSV_CTRL + 1, BIT_WLMCU_IOIF);

		/* cpu enable */
		FUNC1(rtwdev, REG_SYS_FUNC_EN + 1, BIT_FEN_CPUEN);
	} else {
		/* cpu io interface disable */
		FUNC0(rtwdev, REG_SYS_FUNC_EN + 1, BIT_FEN_CPUEN);

		/* cpu disable */
		FUNC0(rtwdev, REG_RSV_CTRL + 1, BIT_WLMCU_IOIF);
	}
}