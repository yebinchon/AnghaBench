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
typedef  size_t u8 ;
struct sk_buff {size_t* data; int len; } ;
struct nfc_hci_dev {int /*<<< orphan*/  ndev; TYPE_1__* pipes; } ;
struct TYPE_2__ {size_t gate; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPROTO ; 
 int /*<<< orphan*/  NFC_COMM_PASSIVE ; 
 int /*<<< orphan*/  NFC_HCI_EVT_END_OPERATION ; 
 int /*<<< orphan*/  NFC_PROTO_NFC_DEP_MASK ; 
 int /*<<< orphan*/  PN544_DEP_ATR_REQ ; 
#define  PN544_HCI_EVT_ACTIVATED 130 
#define  PN544_HCI_EVT_DEACTIVATED 129 
#define  PN544_HCI_EVT_RCV_DATA 128 
 size_t PN544_RF_READER_NFCIP1_INITIATOR_GATE ; 
 size_t PN544_RF_READER_NFCIP1_TARGET_GATE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct nfc_hci_dev*,size_t,int /*<<< orphan*/ ,struct sk_buff**) ; 
 int FUNC2 (struct nfc_hci_dev*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nfc_hci_dev*,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC8(struct nfc_hci_dev *hdev, u8 pipe, u8 event,
				    struct sk_buff *skb)
{
	struct sk_buff *rgb_skb = NULL;
	u8 gate = hdev->pipes[pipe].gate;
	int r;

	FUNC6("hci event %d\n", event);
	switch (event) {
	case PN544_HCI_EVT_ACTIVATED:
		if (gate == PN544_RF_READER_NFCIP1_INITIATOR_GATE) {
			r = FUNC3(hdev, gate);
		} else if (gate == PN544_RF_READER_NFCIP1_TARGET_GATE) {
			r = FUNC1(hdev, gate, PN544_DEP_ATR_REQ,
					      &rgb_skb);
			if (r < 0)
				goto exit;

			r = FUNC4(hdev->ndev, NFC_PROTO_NFC_DEP_MASK,
					     NFC_COMM_PASSIVE, rgb_skb->data,
					     rgb_skb->len);

			FUNC0(rgb_skb);
		} else {
			r = -EINVAL;
		}
		break;
	case PN544_HCI_EVT_DEACTIVATED:
		r = FUNC2(hdev, gate, NFC_HCI_EVT_END_OPERATION,
				       NULL, 0);
		break;
	case PN544_HCI_EVT_RCV_DATA:
		if (skb->len < 2) {
			r = -EPROTO;
			goto exit;
		}

		if (skb->data[0] != 0) {
			FUNC6("data0 %d\n", skb->data[0]);
			r = -EPROTO;
			goto exit;
		}

		FUNC7(skb, 2);
		return FUNC5(hdev->ndev, skb);
	default:
		return 1;
	}

exit:
	FUNC0(skb);

	return r;
}