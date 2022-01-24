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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int se_active; int /*<<< orphan*/  req_completion; int /*<<< orphan*/  se_active_timer; int /*<<< orphan*/  expected_pipes; int /*<<< orphan*/  count_pipes; } ;
struct st21nfca_hci_info {TYPE_1__ se_info; } ;
struct sk_buff {int len; scalar_t__* data; } ;
struct nfc_hci_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  NFC_HCI_ADMIN_GATE ; 
 int /*<<< orphan*/  NFC_HCI_ADMIN_HOST_LIST ; 
#define  NFC_HCI_UICC_HOST_ID 129 
 int /*<<< orphan*/  ST21NFCA_DEVICE_MGNT_GATE ; 
#define  ST21NFCA_ESE_HOST_ID 128 
 scalar_t__ ST21NFCA_EVT_SE_ACTIVATE ; 
 scalar_t__ ST21NFCA_EVT_SE_DEACTIVATE ; 
 scalar_t__ ST21NFCA_EVT_UICC_ACTIVATE ; 
 scalar_t__ ST21NFCA_EVT_UICC_DEACTIVATE ; 
 int /*<<< orphan*/  ST21NFCA_SE_COUNT_PIPE_EMBEDDED ; 
 int /*<<< orphan*/  ST21NFCA_SE_COUNT_PIPE_UICC ; 
 scalar_t__ ST21NFCA_SE_MODE_OFF ; 
 scalar_t__ ST21NFCA_SE_MODE_ON ; 
 int /*<<< orphan*/  ST21NFCA_SE_TO_HOT_PLUG ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct st21nfca_hci_info* FUNC3 (struct nfc_hci_dev*) ; 
 int FUNC4 (struct nfc_hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff**) ; 
 int FUNC5 (struct nfc_hci_dev*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct nfc_hci_dev *hdev, u32 se_idx,
				u8 state)
{
	struct st21nfca_hci_info *info = FUNC3(hdev);
	int r, i;
	struct sk_buff *sk_host_list;
	u8 se_event, host_id;

	switch (se_idx) {
	case NFC_HCI_UICC_HOST_ID:
		se_event = (state == ST21NFCA_SE_MODE_ON ?
					ST21NFCA_EVT_UICC_ACTIVATE :
					ST21NFCA_EVT_UICC_DEACTIVATE);

		info->se_info.count_pipes = 0;
		info->se_info.expected_pipes = ST21NFCA_SE_COUNT_PIPE_UICC;
		break;
	case ST21NFCA_ESE_HOST_ID:
		se_event = (state == ST21NFCA_SE_MODE_ON ?
					ST21NFCA_EVT_SE_ACTIVATE :
					ST21NFCA_EVT_SE_DEACTIVATE);

		info->se_info.count_pipes = 0;
		info->se_info.expected_pipes = ST21NFCA_SE_COUNT_PIPE_EMBEDDED;
		break;
	default:
		return -EINVAL;
	}

	/*
	 * Wait for an EVT_HOT_PLUG in order to
	 * retrieve a relevant host list.
	 */
	FUNC6(&info->se_info.req_completion);
	r = FUNC5(hdev, ST21NFCA_DEVICE_MGNT_GATE, se_event,
			       NULL, 0);
	if (r < 0)
		return r;

	FUNC1(&info->se_info.se_active_timer, jiffies +
		FUNC2(ST21NFCA_SE_TO_HOT_PLUG));
	info->se_info.se_active = true;

	/* Ignore return value and check in any case the host_list */
	FUNC7(&info->se_info.req_completion);

	r = FUNC4(hdev, NFC_HCI_ADMIN_GATE,
			NFC_HCI_ADMIN_HOST_LIST,
			&sk_host_list);
	if (r < 0)
		return r;

	for (i = 0; i < sk_host_list->len &&
		sk_host_list->data[i] != se_idx; i++)
		;
	host_id = sk_host_list->data[i];
	FUNC0(sk_host_list);

	if (state == ST21NFCA_SE_MODE_ON && host_id == se_idx)
		return se_idx;
	else if (state == ST21NFCA_SE_MODE_OFF && host_id != se_idx)
		return se_idx;

	return -1;
}