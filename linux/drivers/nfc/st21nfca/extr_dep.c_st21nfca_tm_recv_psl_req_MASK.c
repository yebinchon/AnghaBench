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
struct st21nfca_psl_req {int dummy; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct nfc_hci_dev {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int FUNC1 (struct nfc_hci_dev*,struct st21nfca_psl_req*) ; 

__attribute__((used)) static int FUNC2(struct nfc_hci_dev *hdev,
				    struct sk_buff *skb)
{
	struct st21nfca_psl_req *psl_req;
	int r;

	FUNC0(skb, skb->len - 1);

	if (!skb->len) {
		r = -EIO;
		goto exit;
	}

	psl_req = (struct st21nfca_psl_req *)skb->data;

	if (skb->len < sizeof(struct st21nfca_psl_req)) {
		r = -EIO;
		goto exit;
	}

	r = FUNC1(hdev, psl_req);
exit:
	return r;
}