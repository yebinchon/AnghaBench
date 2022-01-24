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
struct hisi_hba {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ AM_CTRL_GLOBAL ; 
 scalar_t__ AM_CURR_TRANS_RETURN ; 
 scalar_t__ AXI_MASTER_CFG_BASE ; 
 scalar_t__ DLVRY_QUEUE_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct hisi_hba*) ; 
 int FUNC3 (struct hisi_hba*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct hisi_hba*,scalar_t__,int) ; 
 int FUNC6 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC7 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct hisi_hba *hisi_hba)
{
	struct device *dev = hisi_hba->dev;
	int rc, cnt;

	FUNC7(hisi_hba);
	FUNC5(hisi_hba, DLVRY_QUEUE_ENABLE, 0x0);
	FUNC2(hisi_hba);

	FUNC4(hisi_hba);

	FUNC8(10);

	FUNC5(hisi_hba, AXI_MASTER_CFG_BASE + AM_CTRL_GLOBAL, 0x1);

	/* wait until bus idle */
	cnt = 0;
	while (1) {
		u32 status = FUNC3(hisi_hba,
				AXI_MASTER_CFG_BASE + AM_CURR_TRANS_RETURN);

		if (status == 0x3)
			break;

		FUNC10(10);
		if (cnt++ > 10) {
			FUNC0(dev, "wait axi bus state to idle timeout!\n");
			return -1;
		}
	}

	FUNC1(hisi_hba);

	rc = FUNC6(hisi_hba);
	if (rc)
		return rc;

	FUNC9(hisi_hba);

	return 0;
}