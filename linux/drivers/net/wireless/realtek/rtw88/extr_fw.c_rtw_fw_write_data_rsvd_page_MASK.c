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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct TYPE_2__ {int rsvd_boundary; } ;
struct rtw_dev {TYPE_1__ fifo; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int BIT_BCN_VALID_V1 ; 
 int BIT_ENSWBCN ; 
 int BIT_EN_BCNQ_DL ; 
 int BIT_MASK_BCN_HEAD_1_V1 ; 
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ REG_CR ; 
 int /*<<< orphan*/  REG_FIFOPAGE_CTRL_2 ; 
 scalar_t__ REG_FWHW_TXQ_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,char*) ; 
 int FUNC3 (struct rtw_dev*,int*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rtw_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtw_dev*,scalar_t__,int) ; 

int FUNC7(struct rtw_dev *rtwdev, u16 pg_addr,
				u8 *buf, u32 size)
{
	u8 bckp[2];
	u8 val;
	u16 rsvd_pg_head;
	int ret;

	FUNC1(&rtwdev->mutex);

	if (!size)
		return -EINVAL;

	pg_addr &= BIT_MASK_BCN_HEAD_1_V1;
	FUNC5(rtwdev, REG_FIFOPAGE_CTRL_2, pg_addr | BIT_BCN_VALID_V1);

	val = FUNC4(rtwdev, REG_CR + 1);
	bckp[0] = val;
	val |= BIT_ENSWBCN >> 8;
	FUNC6(rtwdev, REG_CR + 1, val);

	val = FUNC4(rtwdev, REG_FWHW_TXQ_CTRL + 2);
	bckp[1] = val;
	val &= ~(BIT_EN_BCNQ_DL >> 16);
	FUNC6(rtwdev, REG_FWHW_TXQ_CTRL + 2, val);

	ret = FUNC3(rtwdev, buf, size);
	if (ret) {
		FUNC2(rtwdev, "failed to write data to rsvd page\n");
		goto restore;
	}

	if (!FUNC0(rtwdev, REG_FIFOPAGE_CTRL_2, BIT_BCN_VALID_V1, 1)) {
		FUNC2(rtwdev, "error beacon valid\n");
		ret = -EBUSY;
	}

restore:
	rsvd_pg_head = rtwdev->fifo.rsvd_boundary;
	FUNC5(rtwdev, REG_FIFOPAGE_CTRL_2,
		    rsvd_pg_head | BIT_BCN_VALID_V1);
	FUNC6(rtwdev, REG_FWHW_TXQ_CTRL + 2, bckp[1]);
	FUNC6(rtwdev, REG_CR + 1, bckp[0]);

	return ret;
}