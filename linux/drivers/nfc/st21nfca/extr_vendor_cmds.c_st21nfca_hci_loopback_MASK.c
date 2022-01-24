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
struct TYPE_2__ {struct sk_buff* rx_skb; int /*<<< orphan*/  req_completion; } ;
struct st21nfca_hci_info {TYPE_1__ vendor_info; } ;
struct sk_buff {size_t len; int /*<<< orphan*/  data; } ;
struct nfc_hci_dev {int /*<<< orphan*/  ndev; } ;
struct nfc_dev {int dummy; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENOMEM ; 
 int EPROTO ; 
 int /*<<< orphan*/  HCI_LOOPBACK ; 
 int /*<<< orphan*/  NFC_ATTR_VENDOR_DATA ; 
 int /*<<< orphan*/  NFC_HCI_LOOPBACK_GATE ; 
 int /*<<< orphan*/  ST21NFCA_EVT_POST_DATA ; 
 int /*<<< orphan*/  ST21NFCA_VENDOR_OUI ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct nfc_hci_dev* FUNC1 (struct nfc_dev*) ; 
 struct st21nfca_hci_info* FUNC2 (struct nfc_hci_dev*) ; 
 int FUNC3 (struct nfc_hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct nfc_dev *dev, void *data,
				 size_t data_len)
{
	int r;
	struct sk_buff *msg;
	struct nfc_hci_dev *hdev = FUNC1(dev);
	struct st21nfca_hci_info *info = FUNC2(hdev);

	if (data_len <= 0)
		return -EPROTO;

	FUNC7(&info->vendor_info.req_completion);
	info->vendor_info.rx_skb = NULL;

	r = FUNC3(hdev, NFC_HCI_LOOPBACK_GATE,
			       ST21NFCA_EVT_POST_DATA, data, data_len);
	if (r < 0) {
		r = -EPROTO;
		goto exit;
	}

	FUNC8(&info->vendor_info.req_completion);
	if (!info->vendor_info.rx_skb ||
	    info->vendor_info.rx_skb->len != data_len) {
		r = -EPROTO;
		goto exit;
	}

	msg = FUNC4(hdev->ndev,
					ST21NFCA_VENDOR_OUI,
					HCI_LOOPBACK,
					info->vendor_info.rx_skb->len);
	if (!msg) {
		r = -ENOMEM;
		goto free_skb;
	}

	if (FUNC6(msg, NFC_ATTR_VENDOR_DATA, info->vendor_info.rx_skb->len,
		    info->vendor_info.rx_skb->data)) {
		FUNC0(msg);
		r = -ENOBUFS;
		goto free_skb;
	}

	r = FUNC5(msg);
free_skb:
	FUNC0(info->vendor_info.rx_skb);
exit:
	return r;
}