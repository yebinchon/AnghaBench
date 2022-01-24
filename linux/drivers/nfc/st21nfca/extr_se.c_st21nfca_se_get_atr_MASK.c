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
struct TYPE_2__ {int /*<<< orphan*/  wt_timeout; int /*<<< orphan*/  atr; } ;
struct st21nfca_hci_info {TYPE_1__ se_info; } ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct nfc_hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ST21NFCA_APDU_READER_GATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ST21NFCA_ESE_MAX_LENGTH ; 
 int /*<<< orphan*/  ST21NFCA_PARAM_ATR ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct st21nfca_hci_info* FUNC3 (struct nfc_hci_dev*) ; 
 int FUNC4 (struct nfc_hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC5 (struct nfc_hci_dev*) ; 

__attribute__((used)) static void FUNC6(struct nfc_hci_dev *hdev)
{
	int r;
	struct sk_buff *skb;
	struct st21nfca_hci_info *info = FUNC3(hdev);

	r = FUNC4(hdev, ST21NFCA_APDU_READER_GATE,
			ST21NFCA_PARAM_ATR, &skb);
	if (r < 0)
		return;

	if (skb->len <= ST21NFCA_ESE_MAX_LENGTH) {
		FUNC2(info->se_info.atr, skb->data, skb->len);
		info->se_info.wt_timeout =
			FUNC0(FUNC5(hdev));
	}
	FUNC1(skb);
}