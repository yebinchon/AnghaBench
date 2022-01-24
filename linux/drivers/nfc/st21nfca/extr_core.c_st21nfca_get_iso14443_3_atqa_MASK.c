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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct nfc_hci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  ST21NFCA_RF_READER_14443_3_A_ATQA ; 
 int /*<<< orphan*/  ST21NFCA_RF_READER_14443_3_A_GATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct nfc_hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff**) ; 

__attribute__((used)) static int FUNC3(struct nfc_hci_dev *hdev, u16 *atqa)
{
	int r;
	struct sk_buff *atqa_skb = NULL;

	r = FUNC2(hdev, ST21NFCA_RF_READER_14443_3_A_GATE,
			      ST21NFCA_RF_READER_14443_3_A_ATQA, &atqa_skb);
	if (r < 0)
		goto exit;

	if (atqa_skb->len != 2) {
		r = -EPROTO;
		goto exit;
	}

	*atqa = FUNC0(*(__be16 *) atqa_skb->data);

exit:
	FUNC1(atqa_skb);
	return r;
}