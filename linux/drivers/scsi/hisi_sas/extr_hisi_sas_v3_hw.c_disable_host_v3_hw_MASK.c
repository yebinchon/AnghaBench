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
 int AM_CTRL_SHUTDOWN_REQ_MSK ; 
 scalar_t__ AM_CURR_TRANS_RETURN ; 
 scalar_t__ AXI_MASTER_CFG_BASE ; 
 scalar_t__ DLVRY_QUEUE_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_hba*) ; 
 int FUNC2 (struct hisi_hba*,scalar_t__) ; 
 int FUNC3 (scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct hisi_hba*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct hisi_hba *hisi_hba)
{
	struct device *dev = hisi_hba->dev;
	u32 status, reg_val;
	int rc;

	FUNC6(hisi_hba);
	FUNC5(hisi_hba, DLVRY_QUEUE_ENABLE, 0x0);
	FUNC1(hisi_hba);

	FUNC4(hisi_hba);

	FUNC7(10);

	reg_val = FUNC2(hisi_hba, AXI_MASTER_CFG_BASE +
				  AM_CTRL_GLOBAL);
	reg_val |= AM_CTRL_SHUTDOWN_REQ_MSK;
	FUNC5(hisi_hba, AXI_MASTER_CFG_BASE +
			 AM_CTRL_GLOBAL, reg_val);

	/* wait until bus idle */
	rc = FUNC3(AXI_MASTER_CFG_BASE +
					  AM_CURR_TRANS_RETURN, status,
					  status == 0x3, 10, 100);
	if (rc) {
		FUNC0(dev, "axi bus is not idle, rc=%d\n", rc);
		return rc;
	}

	return 0;
}