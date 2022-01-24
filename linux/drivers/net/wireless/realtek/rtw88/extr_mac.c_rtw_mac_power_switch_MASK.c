#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct rtw_pwr_seq_cmd {int dummy; } ;
struct TYPE_2__ {scalar_t__ rpwm_addr; } ;
struct rtw_dev {TYPE_1__ hci; struct rtw_chip_info* chip; } ;
struct rtw_chip_info {struct rtw_pwr_seq_cmd** pwr_off_seq; struct rtw_pwr_seq_cmd** pwr_on_seq; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int BIT_RPWM_TOGGLE ; 
 int EALREADY ; 
 int EINVAL ; 
 scalar_t__ REG_CR ; 
 int /*<<< orphan*/  REG_MCUFW_CTRL ; 
 scalar_t__ REG_SYS_STATUS1 ; 
 scalar_t__ RTW_HCI_TYPE_USB ; 
 scalar_t__ FUNC1 (struct rtw_dev*) ; 
 scalar_t__ FUNC2 (struct rtw_dev*,struct rtw_pwr_seq_cmd**) ; 
 int FUNC3 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rtw_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_dev*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC6(struct rtw_dev *rtwdev, bool pwr_on)
{
	struct rtw_chip_info *chip = rtwdev->chip;
	struct rtw_pwr_seq_cmd **pwr_seq;
	u8 rpwm;
	bool cur_pwr;

	rpwm = FUNC4(rtwdev, rtwdev->hci.rpwm_addr);

	/* Check FW still exist or not */
	if (FUNC3(rtwdev, REG_MCUFW_CTRL) == 0xC078) {
		rpwm = (rpwm ^ BIT_RPWM_TOGGLE) & BIT_RPWM_TOGGLE;
		FUNC5(rtwdev, rtwdev->hci.rpwm_addr, rpwm);
	}

	if (FUNC4(rtwdev, REG_CR) == 0xea)
		cur_pwr = false;
	else if (FUNC1(rtwdev) == RTW_HCI_TYPE_USB &&
		 (FUNC4(rtwdev, REG_SYS_STATUS1 + 1) & FUNC0(0)))
		cur_pwr = false;
	else
		cur_pwr = true;

	if (pwr_on && cur_pwr)
		return -EALREADY;

	pwr_seq = pwr_on ? chip->pwr_on_seq : chip->pwr_off_seq;
	if (FUNC2(rtwdev, pwr_seq))
		return -EINVAL;

	return 0;
}