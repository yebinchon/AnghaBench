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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct nfc_hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MICROREAD_EVT_MCARD_EXCHANGE ; 
 int /*<<< orphan*/  MICROREAD_GATE_ID_P2P_TARGET ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct nfc_hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct nfc_hci_dev *hdev, struct sk_buff *skb)
{
	int r;

	r = FUNC1(hdev, MICROREAD_GATE_ID_P2P_TARGET,
			       MICROREAD_EVT_MCARD_EXCHANGE,
			       skb->data, skb->len);

	FUNC0(skb);

	return r;
}