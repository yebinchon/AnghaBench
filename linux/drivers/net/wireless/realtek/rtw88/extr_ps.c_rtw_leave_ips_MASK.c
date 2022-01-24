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
 int /*<<< orphan*/  COEX_IPS_LEAVE ; 
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,char*) ; 
 int FUNC2 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,int /*<<< orphan*/ ,struct rtw_dev*) ; 
 int /*<<< orphan*/  rtw_restore_port_cfg_iter ; 

int FUNC4(struct rtw_dev *rtwdev)
{
	int ret;

	ret = FUNC2(rtwdev);
	if (ret) {
		FUNC1(rtwdev, "failed to leave ips state\n");
		return ret;
	}

	FUNC3(rtwdev, rtw_restore_port_cfg_iter, rtwdev);

	FUNC0(rtwdev, COEX_IPS_LEAVE);

	return 0;
}