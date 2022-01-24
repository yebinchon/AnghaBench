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
struct rtw_fw_state {int /*<<< orphan*/  completion; } ;
struct rtw_dev {int /*<<< orphan*/  dev; struct rtw_fw_state fw; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,char*) ; 
 int /*<<< orphan*/  rtw_load_firmware_cb ; 

__attribute__((used)) static int FUNC3(struct rtw_dev *rtwdev, const char *fw_name)
{
	struct rtw_fw_state *fw = &rtwdev->fw;
	int ret;

	FUNC0(&fw->completion);

	ret = FUNC1(THIS_MODULE, true, fw_name, rtwdev->dev,
				      GFP_KERNEL, rtwdev, rtw_load_firmware_cb);
	if (ret) {
		FUNC2(rtwdev, "async firmware request failed\n");
		return ret;
	}

	return 0;
}