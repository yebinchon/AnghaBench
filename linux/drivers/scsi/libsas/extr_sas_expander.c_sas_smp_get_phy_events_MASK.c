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
typedef  int /*<<< orphan*/  u8 ;
struct sas_rphy {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct sas_phy {void* phy_reset_problem_count; void* loss_of_dword_sync_count; void* running_disparity_error_count; void* invalid_dword_count; int /*<<< orphan*/  number; TYPE_1__ dev; } ;
struct domain_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  RPEL_REQ_SIZE ; 
 int /*<<< orphan*/  RPEL_RESP_SIZE ; 
 int /*<<< orphan*/  SMP_REPORT_PHY_ERR_LOG ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 struct sas_rphy* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct domain_device* FUNC5 (struct sas_rphy*) ; 
 int FUNC6 (struct domain_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC7(struct sas_phy *phy)
{
	int res;
	u8 *req;
	u8 *resp;
	struct sas_rphy *rphy = FUNC2(phy->dev.parent);
	struct domain_device *dev = FUNC5(rphy);

	req = FUNC0(RPEL_REQ_SIZE);
	if (!req)
		return -ENOMEM;

	resp = FUNC1(RPEL_RESP_SIZE);
	if (!resp) {
		FUNC4(req);
		return -ENOMEM;
	}

	req[1] = SMP_REPORT_PHY_ERR_LOG;
	req[9] = phy->number;

	res = FUNC6(dev, req, RPEL_REQ_SIZE,
			            resp, RPEL_RESP_SIZE);

	if (res)
		goto out;

	phy->invalid_dword_count = FUNC3(&resp[12]);
	phy->running_disparity_error_count = FUNC3(&resp[16]);
	phy->loss_of_dword_sync_count = FUNC3(&resp[20]);
	phy->phy_reset_problem_count = FUNC3(&resp[24]);

 out:
	FUNC4(req);
	FUNC4(resp);
	return res;

}