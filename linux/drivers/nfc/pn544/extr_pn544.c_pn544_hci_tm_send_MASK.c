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
typedef  scalar_t__ u8 ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct nfc_hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PN544_HCI_EVT_SND_DATA ; 
 int /*<<< orphan*/  PN544_RF_READER_NFCIP1_TARGET_GATE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct nfc_hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC3(struct nfc_hci_dev *hdev, struct sk_buff *skb)
{
	int r;

	/* Set default false for multiple information chaining */
	*(u8 *)FUNC2(skb, 1) = 0;

	r = FUNC1(hdev, PN544_RF_READER_NFCIP1_TARGET_GATE,
			       PN544_HCI_EVT_SND_DATA, skb->data, skb->len);

	FUNC0(skb);

	return r;
}