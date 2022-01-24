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
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  curr_nfc_dep_pni; } ;
struct st21nfca_hci_info {TYPE_1__ dep_info; } ;
struct st21nfca_dep_req_res {int /*<<< orphan*/  pfb; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct nfc_hci_dev {int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
#define  ST21NFCA_NFC_DEP_PFB_ACK_NACK_PDU 130 
#define  ST21NFCA_NFC_DEP_PFB_I_PDU 129 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  ST21NFCA_NFC_DEP_PFB_SUPERVISOR_PDU 128 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct st21nfca_hci_info* FUNC4 (struct nfc_hci_dev*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC9(struct nfc_hci_dev *hdev,
				    struct sk_buff *skb)
{
	struct st21nfca_dep_req_res *dep_req;
	u8 size;
	int r;
	struct st21nfca_hci_info *info = FUNC4(hdev);

	FUNC8(skb, skb->len - 1);

	size = 4;

	dep_req = (struct st21nfca_dep_req_res *)skb->data;
	if (skb->len < size) {
		r = -EIO;
		goto exit;
	}

	if (FUNC0(dep_req->pfb))
		size++;
	if (FUNC1(dep_req->pfb))
		size++;

	if (skb->len < size) {
		r = -EIO;
		goto exit;
	}

	/* Receiving DEP_REQ - Decoding */
	switch (FUNC3(dep_req->pfb)) {
	case ST21NFCA_NFC_DEP_PFB_I_PDU:
		info->dep_info.curr_nfc_dep_pni =
				FUNC2(dep_req->pfb);
		break;
	case ST21NFCA_NFC_DEP_PFB_ACK_NACK_PDU:
		FUNC6("Received a ACK/NACK PDU\n");
		break;
	case ST21NFCA_NFC_DEP_PFB_SUPERVISOR_PDU:
		FUNC6("Received a SUPERVISOR PDU\n");
		break;
	}

	FUNC7(skb, size);

	return FUNC5(hdev->ndev, skb);
exit:
	return r;
}