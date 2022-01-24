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
typedef  int /*<<< orphan*/  u8 ;
struct st21nfca_psl_res {int length; int /*<<< orphan*/  did; int /*<<< orphan*/  cmd1; int /*<<< orphan*/  cmd0; } ;
struct st21nfca_psl_req {int /*<<< orphan*/  brs; int /*<<< orphan*/  did; } ;
struct sk_buff {int len; int /*<<< orphan*/ * data; } ;
struct nfc_hci_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ST21NFCA_CARD_BITRATE_424 ; 
 int /*<<< orphan*/  ST21NFCA_EVT_CARD_F_BITRATE ; 
 int /*<<< orphan*/  ST21NFCA_EVT_SEND_DATA ; 
 int /*<<< orphan*/  ST21NFCA_NFCIP1_PSL_RES ; 
 int /*<<< orphan*/  ST21NFCA_NFCIP1_RES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ST21NFCA_RF_CARD_F_GATE ; 
 struct sk_buff* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct nfc_hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC6(struct nfc_hci_dev *hdev,
				    struct st21nfca_psl_req *psl_req)
{
	struct st21nfca_psl_res *psl_res;
	struct sk_buff *skb;
	u8 bitrate[2] = {0, 0};
	int r;

	skb = FUNC2(sizeof(struct st21nfca_psl_res), GFP_KERNEL);
	if (!skb)
		return -ENOMEM;
	FUNC5(skb, sizeof(struct st21nfca_psl_res));

	psl_res = (struct st21nfca_psl_res *)skb->data;

	psl_res->length = sizeof(struct st21nfca_psl_res);
	psl_res->cmd0 = ST21NFCA_NFCIP1_RES;
	psl_res->cmd1 = ST21NFCA_NFCIP1_PSL_RES;
	psl_res->did = psl_req->did;

	r = FUNC4(hdev, ST21NFCA_RF_CARD_F_GATE,
				ST21NFCA_EVT_SEND_DATA, skb->data, skb->len);
	if (r < 0)
		goto error;

	/*
	 * ST21NFCA only support P2P passive.
	 * PSL_REQ BRS value != 0 has only a meaning to
	 * change technology to type F.
	 * We change to BITRATE 424Kbits.
	 * In other case switch to BITRATE 106Kbits.
	 */
	if (FUNC1(psl_req->brs) &&
	    FUNC0(psl_req->brs)) {
		bitrate[0] = ST21NFCA_CARD_BITRATE_424;
		bitrate[1] = ST21NFCA_CARD_BITRATE_424;
	}

	/* Send an event to change bitrate change event to card f */
	r = FUNC4(hdev, ST21NFCA_RF_CARD_F_GATE,
			ST21NFCA_EVT_CARD_F_BITRATE, bitrate, 2);
error:
	FUNC3(skb);
	return r;
}