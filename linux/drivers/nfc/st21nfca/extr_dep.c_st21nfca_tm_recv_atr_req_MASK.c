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
struct st21nfca_atr_req {int length; int /*<<< orphan*/  gbi; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct nfc_hci_dev {int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int EIO ; 
 int EPROTO ; 
 int /*<<< orphan*/  NFC_COMM_PASSIVE ; 
 int /*<<< orphan*/  NFC_PROTO_NFC_DEP_MASK ; 
 int ST21NFCA_ATR_REQ_MIN_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 int FUNC2 (struct nfc_hci_dev*,struct st21nfca_atr_req*) ; 

__attribute__((used)) static int FUNC3(struct nfc_hci_dev *hdev,
				    struct sk_buff *skb)
{
	struct st21nfca_atr_req *atr_req;
	size_t gb_len;
	int r;

	FUNC1(skb, skb->len - 1);

	if (!skb->len) {
		r = -EIO;
		goto exit;
	}

	if (skb->len < ST21NFCA_ATR_REQ_MIN_SIZE) {
		r = -EPROTO;
		goto exit;
	}

	atr_req = (struct st21nfca_atr_req *)skb->data;

	if (atr_req->length < sizeof(struct st21nfca_atr_req)) {
		r = -EPROTO;
		goto exit;
	}

	r = FUNC2(hdev, atr_req);
	if (r)
		goto exit;

	gb_len = skb->len - sizeof(struct st21nfca_atr_req);

	r = FUNC0(hdev->ndev, NFC_PROTO_NFC_DEP_MASK,
			      NFC_COMM_PASSIVE, atr_req->gbi, gb_len);
	if (r)
		goto exit;

	r = 0;

exit:
	return r;
}