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
typedef  int u32 ;
struct TYPE_2__ {int bwi_active; int /*<<< orphan*/  wt_timeout; int /*<<< orphan*/  bwi_timer; void* cb_context; int /*<<< orphan*/  cb; } ;
struct st_nci_info {TYPE_1__ se_info; } ;
struct nci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  se_io_cb_t ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  ST_NCI_APDU_READER_GATE ; 
#define  ST_NCI_ESE_HOST_ID 128 
 int /*<<< orphan*/  ST_NCI_EVT_TRANSMIT_DATA ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct st_nci_info* FUNC2 (struct nci_dev*) ; 
 int FUNC3 (struct nci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(struct nci_dev *ndev, u32 se_idx,
		       u8 *apdu, size_t apdu_length,
		       se_io_cb_t cb, void *cb_context)
{
	struct st_nci_info *info = FUNC2(ndev);

	FUNC4("\n");

	switch (se_idx) {
	case ST_NCI_ESE_HOST_ID:
		info->se_info.cb = cb;
		info->se_info.cb_context = cb_context;
		FUNC0(&info->se_info.bwi_timer, jiffies +
			  FUNC1(info->se_info.wt_timeout));
		info->se_info.bwi_active = true;
		return FUNC3(ndev, ST_NCI_APDU_READER_GATE,
					ST_NCI_EVT_TRANSMIT_DATA, apdu,
					apdu_length);
	default:
		return -ENODEV;
	}
}