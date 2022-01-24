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
struct sk_buff {int dummy; } ;
struct pn533 {int dummy; } ;
struct nfc_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  PN533_CMD_SAM_CONFIGURATION ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct pn533* FUNC3 (struct nfc_dev*) ; 
 struct sk_buff* FUNC4 (struct pn533*,int) ; 
 struct sk_buff* FUNC5 (struct pn533*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC7(struct nfc_dev *nfc_dev)
{
	struct pn533 *dev = FUNC3(nfc_dev);
	struct sk_buff *skb;
	struct sk_buff *resp;

	skb = FUNC4(dev, 1);
	if (!skb)
		return -ENOMEM;

	FUNC6(skb, 0x01);

	resp = FUNC5(dev, PN533_CMD_SAM_CONFIGURATION, skb);
	if (FUNC0(resp))
		return FUNC1(resp);

	FUNC2(resp);
	return 0;
}