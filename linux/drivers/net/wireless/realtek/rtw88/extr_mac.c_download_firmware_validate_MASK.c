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
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FW_KEY_MASK ; 
 int /*<<< orphan*/  FW_READY ; 
 int /*<<< orphan*/  FW_READY_MASK ; 
 int ILLEGAL_KEY_GROUP ; 
 int /*<<< orphan*/  REG_FW_DBG7 ; 
 int /*<<< orphan*/  REG_MCUFW_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,char*) ; 
 int FUNC2 (struct rtw_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct rtw_dev *rtwdev)
{
	u32 fw_key;

	if (!FUNC0(rtwdev, REG_MCUFW_CTRL, FW_READY_MASK, FW_READY)) {
		fw_key = FUNC2(rtwdev, REG_FW_DBG7) & FW_KEY_MASK;
		if (fw_key == ILLEGAL_KEY_GROUP)
			FUNC1(rtwdev, "invalid fw key\n");
		return -EINVAL;
	}

	return 0;
}