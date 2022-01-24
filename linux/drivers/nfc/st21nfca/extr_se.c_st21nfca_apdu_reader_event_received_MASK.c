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
typedef  int u8 ;
struct TYPE_3__ {int bwi_active; int /*<<< orphan*/  wt_timeout; int /*<<< orphan*/  bwi_timer; int /*<<< orphan*/  cb_context; int /*<<< orphan*/  (* cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct st21nfca_hci_info {TYPE_1__ se_info; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct nfc_hci_dev {TYPE_2__* ndev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ST21NFCA_DEVICE_MGNT_GATE ; 
 int /*<<< orphan*/  ST21NFCA_EVT_SE_END_OF_APDU_TRANSFER ; 
#define  ST21NFCA_EVT_TRANSMIT_DATA 129 
#define  ST21NFCA_EVT_WTX_REQUEST 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct st21nfca_hci_info* FUNC5 (struct nfc_hci_dev*) ; 
 int FUNC6 (struct nfc_hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct nfc_hci_dev *hdev,
					u8 event, struct sk_buff *skb)
{
	int r = 0;
	struct st21nfca_hci_info *info = FUNC5(hdev);

	FUNC7("apdu reader gate event: %x\n", event);

	switch (event) {
	case ST21NFCA_EVT_TRANSMIT_DATA:
		FUNC0(&info->se_info.bwi_timer);
		info->se_info.bwi_active = false;
		r = FUNC6(hdev, ST21NFCA_DEVICE_MGNT_GATE,
				ST21NFCA_EVT_SE_END_OF_APDU_TRANSFER, NULL, 0);
		if (r < 0)
			goto exit;

		info->se_info.cb(info->se_info.cb_context,
			skb->data, skb->len, 0);
		break;
	case ST21NFCA_EVT_WTX_REQUEST:
		FUNC2(&info->se_info.bwi_timer, jiffies +
				FUNC3(info->se_info.wt_timeout));
		break;
	default:
		FUNC4(&hdev->ndev->dev, "Unexpected event on apdu reader gate\n");
		return 1;
	}

exit:
	FUNC1(skb);
	return r;
}