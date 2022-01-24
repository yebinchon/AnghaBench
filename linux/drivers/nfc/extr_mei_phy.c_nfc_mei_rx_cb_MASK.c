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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct nfc_mei_phy {scalar_t__ hard_fault; int /*<<< orphan*/  hdev; } ;
struct mei_cl_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sk_buff*) ; 
 int MEI_NFC_HEADER_SIZE ; 
 int /*<<< orphan*/  MEI_NFC_MAX_READ ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct nfc_mei_phy* FUNC3 (struct mei_cl_device*) ; 
 int FUNC4 (struct nfc_mei_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC8(struct mei_cl_device *cldev)
{
	struct nfc_mei_phy *phy = FUNC3(cldev);
	struct sk_buff *skb;
	int reply_size;

	if (!phy)
		return;

	if (phy->hard_fault != 0)
		return;

	skb = FUNC1(MEI_NFC_MAX_READ, GFP_KERNEL);
	if (!skb)
		return;

	reply_size = FUNC4(phy, skb->data, MEI_NFC_MAX_READ);
	if (reply_size < MEI_NFC_HEADER_SIZE) {
		FUNC2(skb);
		return;
	}

	FUNC7(skb, reply_size);
	FUNC6(skb, MEI_NFC_HEADER_SIZE);

	FUNC0("mei frame read", skb);

	FUNC5(phy->hdev, skb);
}