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
struct st_nci_se_status {int dummy; } ;
struct TYPE_2__ {int bwi_active; int se_active; int xch_error; struct st_nci_se_status* se_status; int /*<<< orphan*/  wt_timeout; int /*<<< orphan*/  se_active_timer; int /*<<< orphan*/  bwi_timer; int /*<<< orphan*/  req_completion; } ;
struct st_nci_info {TYPE_1__ se_info; } ;
struct nci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ST_NCI_ATR_DEFAULT_BWI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct st_nci_info* FUNC2 (struct nci_dev*) ; 
 int /*<<< orphan*/  st_nci_se_activation_timeout ; 
 int /*<<< orphan*/  st_nci_se_wt_timeout ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct nci_dev *ndev, struct st_nci_se_status *se_status)
{
	struct st_nci_info *info = FUNC2(ndev);

	FUNC1(&info->se_info.req_completion);
	/* initialize timers */
	FUNC3(&info->se_info.bwi_timer, st_nci_se_wt_timeout, 0);
	info->se_info.bwi_active = false;

	FUNC3(&info->se_info.se_active_timer,
		    st_nci_se_activation_timeout, 0);
	info->se_info.se_active = false;

	info->se_info.xch_error = false;

	info->se_info.wt_timeout =
		FUNC0(ST_NCI_ATR_DEFAULT_BWI);

	info->se_info.se_status = se_status;

	return 0;
}