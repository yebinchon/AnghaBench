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
struct port100 {int dummy; } ;
struct nfc_digital_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  PORT100_CMD_SWITCH_RF ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct port100* FUNC3 (struct nfc_digital_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfc_digital_dev*) ; 
 struct sk_buff* FUNC5 (struct port100*,int) ; 
 struct sk_buff* FUNC6 (struct port100*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC8(struct nfc_digital_dev *ddev, bool on)
{
	struct port100 *dev = FUNC3(ddev);
	struct sk_buff *skb, *resp;

	skb = FUNC5(dev, 1);
	if (!skb)
		return -ENOMEM;

	FUNC7(skb, on ? 1 : 0);

	/* Cancel the last command if the device is being switched off */
	if (!on)
		FUNC4(ddev);

	resp = FUNC6(dev, PORT100_CMD_SWITCH_RF, skb);

	if (FUNC0(resp))
		return FUNC1(resp);

	FUNC2(resp);

	return 0;
}