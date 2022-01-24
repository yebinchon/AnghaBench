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
struct sk_buff {int* data; } ;
struct port100_protocol {scalar_t__ number; } ;
struct port100 {int dummy; } ;
struct nfc_digital_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int NFC_DIGITAL_FRAMING_LAST ; 
 int /*<<< orphan*/  PORT100_CMD_IN_SET_PROTOCOL ; 
 scalar_t__ PORT100_IN_PROT_END ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct port100_protocol** in_protocols ; 
 struct port100* FUNC3 (struct nfc_digital_dev*) ; 
 struct sk_buff* FUNC4 (struct port100*,size_t) ; 
 struct sk_buff* FUNC5 (struct port100*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct port100_protocol*,size_t) ; 

__attribute__((used)) static int FUNC7(struct nfc_digital_dev *ddev, int param)
{
	struct port100 *dev = FUNC3(ddev);
	struct port100_protocol *protocols;
	struct sk_buff *skb;
	struct sk_buff *resp;
	int num_protocols;
	size_t size;
	int rc;

	if (param >= NFC_DIGITAL_FRAMING_LAST)
		return -EINVAL;

	protocols = in_protocols[param];

	num_protocols = 0;
	while (protocols[num_protocols].number != PORT100_IN_PROT_END)
		num_protocols++;

	if (!num_protocols)
		return 0;

	size = sizeof(struct port100_protocol) * num_protocols;

	skb = FUNC4(dev, size);
	if (!skb)
		return -ENOMEM;

	FUNC6(skb, protocols, size);

	resp = FUNC5(dev, PORT100_CMD_IN_SET_PROTOCOL, skb);

	if (FUNC0(resp))
		return FUNC1(resp);

	rc = resp->data[0];

	FUNC2(resp);

	return rc;
}