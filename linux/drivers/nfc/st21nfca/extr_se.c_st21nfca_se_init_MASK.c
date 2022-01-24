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
struct TYPE_2__ {int bwi_active; int se_active; int xch_error; int /*<<< orphan*/  wt_timeout; scalar_t__ expected_pipes; scalar_t__ count_pipes; int /*<<< orphan*/  se_active_timer; int /*<<< orphan*/  bwi_timer; int /*<<< orphan*/  req_completion; } ;
struct st21nfca_hci_info {TYPE_1__ se_info; } ;
struct nfc_hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ST21NFCA_ATR_DEFAULT_BWI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct st21nfca_hci_info* FUNC2 (struct nfc_hci_dev*) ; 
 int /*<<< orphan*/  st21nfca_se_activation_timeout ; 
 int /*<<< orphan*/  st21nfca_se_wt_timeout ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct nfc_hci_dev *hdev)
{
	struct st21nfca_hci_info *info = FUNC2(hdev);

	FUNC1(&info->se_info.req_completion);
	/* initialize timers */
	FUNC3(&info->se_info.bwi_timer, st21nfca_se_wt_timeout, 0);
	info->se_info.bwi_active = false;

	FUNC3(&info->se_info.se_active_timer,
		    st21nfca_se_activation_timeout, 0);
	info->se_info.se_active = false;

	info->se_info.count_pipes = 0;
	info->se_info.expected_pipes = 0;

	info->se_info.xch_error = false;

	info->se_info.wt_timeout =
			FUNC0(ST21NFCA_ATR_DEFAULT_BWI);
}