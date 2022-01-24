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
struct sk_buff {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
struct nfc_hci_dev {int dummy; } ;
struct nfc_dev {int dummy; } ;
struct get_param_data {int /*<<< orphan*/  data; int /*<<< orphan*/  gate; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENOMEM ; 
 int EPROTO ; 
 int /*<<< orphan*/  HCI_GET_PARAM ; 
 int /*<<< orphan*/  NFC_ATTR_VENDOR_DATA ; 
 int /*<<< orphan*/  ST21NFCA_VENDOR_OUI ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct nfc_hci_dev* FUNC1 (struct nfc_dev*) ; 
 int FUNC2 (struct nfc_hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff**) ; 
 struct sk_buff* FUNC3 (struct nfc_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct nfc_dev *dev, void *data,
				  size_t data_len)
{
	int r;
	struct sk_buff *msg, *skb;
	struct nfc_hci_dev *hdev = FUNC1(dev);
	struct get_param_data *param = (struct get_param_data *)data;

	if (data_len < sizeof(struct get_param_data))
		return -EPROTO;

	r = FUNC2(hdev, param->gate, param->data, &skb);
	if (r)
		goto exit;

	msg = FUNC3(dev, ST21NFCA_VENDOR_OUI,
					     HCI_GET_PARAM, skb->len);
	if (!msg) {
		r = -ENOMEM;
		goto free_skb;
	}

	if (FUNC5(msg, NFC_ATTR_VENDOR_DATA, skb->len, skb->data)) {
		FUNC0(msg);
		r = -ENOBUFS;
		goto free_skb;
	}

	r = FUNC4(msg);

free_skb:
	FUNC0(skb);
exit:
	return r;
}