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
struct ufs_pa_layer_attr {int /*<<< orphan*/  hs_rate; int /*<<< orphan*/  pwr_rx; int /*<<< orphan*/  gear_rx; } ;
struct ufs_qcom_host {struct ufs_pa_layer_attr dev_req_params; } ;
struct ufs_hba {int dummy; } ;
typedef  enum ufs_notify_change_status { ____Placeholder_ufs_notify_change_status } ufs_notify_change_status ;

/* Variables and functions */
 int PRE_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (struct ufs_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct ufs_hba*) ; 
 int FUNC2 (struct ufs_hba*) ; 
 int FUNC3 (struct ufs_hba*) ; 
 int FUNC4 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct ufs_qcom_host*) ; 
 struct ufs_qcom_host* FUNC6 (struct ufs_hba*) ; 

__attribute__((used)) static int FUNC7(struct ufs_hba *hba,
		bool scale_up, enum ufs_notify_change_status status)
{
	struct ufs_qcom_host *host = FUNC6(hba);
	struct ufs_pa_layer_attr *dev_req_params = &host->dev_req_params;
	int err = 0;

	if (status == PRE_CHANGE) {
		if (scale_up)
			err = FUNC4(hba);
		else
			err = FUNC2(hba);
	} else {
		if (scale_up)
			err = FUNC3(hba);
		else
			err = FUNC1(hba);

		if (err || !dev_req_params)
			goto out;

		FUNC0(hba,
				    dev_req_params->gear_rx,
				    dev_req_params->pwr_rx,
				    dev_req_params->hs_rate,
				    false);
		FUNC5(host);
	}

out:
	return err;
}