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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct sk_buff {int len; int* data; } ;
struct nfc_hci_dev {int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFC_SE_EMBEDDED ; 
 int /*<<< orphan*/  NFC_SE_UICC ; 
 int /*<<< orphan*/  PN544_HCI_EVT_SWITCH_MODE ; 
 int /*<<< orphan*/  PN544_NFC_WI_MGMT_GATE ; 
 int /*<<< orphan*/  PN544_SYS_MGMT_GATE ; 
 int /*<<< orphan*/  PN544_TEST_SWP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nfc_hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff**) ; 
 int FUNC3 (struct nfc_hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC4(struct nfc_hci_dev *hdev)
{
	u32 se_idx = 0;
	u8 ese_mode = 0x01; /* Default mode */
	struct sk_buff *res_skb;
	int r;

	r = FUNC2(hdev, PN544_SYS_MGMT_GATE, PN544_TEST_SWP,
			     NULL, 0, &res_skb);

	if (r == 0) {
		if (res_skb->len == 2 && res_skb->data[0] == 0x00)
			FUNC1(hdev->ndev, se_idx++, NFC_SE_UICC);

		FUNC0(res_skb);
	}

	r = FUNC3(hdev, PN544_NFC_WI_MGMT_GATE,
				PN544_HCI_EVT_SWITCH_MODE,
				&ese_mode, 1);
	if (r == 0)
		FUNC1(hdev->ndev, se_idx++, NFC_SE_EMBEDDED);

	return !se_idx;
}