#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct rtw_fw_state {TYPE_1__* firmware; } ;
struct TYPE_4__ {scalar_t__ seq; scalar_t__ last_box_num; } ;
struct rtw_dev {TYPE_2__ h2c; } ;
struct rtw_backup_info {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_FEN_CPUEN ; 
 int /*<<< orphan*/  BIT_MCUFWDL_EN ; 
 int DLFW_RESTORE_REG_NUM ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  REG_MCUFW_CTRL ; 
 scalar_t__ REG_SYS_FUNC_EN ; 
 int /*<<< orphan*/  RTW_FLAG_FW_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,struct rtw_backup_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,struct rtw_backup_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*) ; 
 int FUNC5 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtw_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rtw_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rtw_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct rtw_dev*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct rtw_dev*,struct rtw_fw_state*) ; 
 int /*<<< orphan*/  FUNC14 (struct rtw_dev*,int) ; 

int FUNC15(struct rtw_dev *rtwdev, struct rtw_fw_state *fw)
{
	struct rtw_backup_info bckp[DLFW_RESTORE_REG_NUM];
	const u8 *data = fw->firmware->data;
	u32 size = fw->firmware->size;
	u32 ltecoex_bckp;
	int ret;

	if (!FUNC0(data, size))
		return -EINVAL;

	if (!FUNC6(rtwdev, 0x38, &ltecoex_bckp))
		return -EBUSY;

	FUNC14(rtwdev, false);

	FUNC2(rtwdev, bckp);
	FUNC4(rtwdev);

	ret = FUNC12(rtwdev, data, size);
	if (ret)
		goto dlfw_fail;

	FUNC3(rtwdev, bckp, DLFW_RESTORE_REG_NUM);

	FUNC1(rtwdev);

	FUNC14(rtwdev, true);

	if (!FUNC7(rtwdev, 0x38, ltecoex_bckp))
		return -EBUSY;

	ret = FUNC5(rtwdev);
	if (ret)
		goto dlfw_fail;

	FUNC13(rtwdev, fw);

	/* reset desc and index */
	FUNC9(rtwdev);

	rtwdev->h2c.last_box_num = 0;
	rtwdev->h2c.seq = 0;

	FUNC8(rtwdev, RTW_FLAG_FW_RUNNING);

	return 0;

dlfw_fail:
	/* Disable FWDL_EN */
	FUNC10(rtwdev, REG_MCUFW_CTRL, BIT_MCUFWDL_EN);
	FUNC11(rtwdev, REG_SYS_FUNC_EN + 1, BIT_FEN_CPUEN);

	return ret;
}