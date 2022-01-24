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
typedef  size_t u8 ;
struct sk_buff {int* data; } ;
struct port100_tg_rf_setting {int dummy; } ;
struct port100 {int dummy; } ;
struct nfc_digital_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 size_t NFC_DIGITAL_RF_TECH_LAST ; 
 int /*<<< orphan*/  PORT100_CMD_TG_SET_RF ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct port100* FUNC3 (struct nfc_digital_dev*) ; 
 struct sk_buff* FUNC4 (struct port100*,int) ; 
 struct sk_buff* FUNC5 (struct port100*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * tg_rf_settings ; 

__attribute__((used)) static int FUNC7(struct nfc_digital_dev *ddev, u8 rf)
{
	struct port100 *dev = FUNC3(ddev);
	struct sk_buff *skb;
	struct sk_buff *resp;
	int rc;

	if (rf >= NFC_DIGITAL_RF_TECH_LAST)
		return -EINVAL;

	skb = FUNC4(dev, sizeof(struct port100_tg_rf_setting));
	if (!skb)
		return -ENOMEM;

	FUNC6(skb, &tg_rf_settings[rf],
		     sizeof(struct port100_tg_rf_setting));

	resp = FUNC5(dev, PORT100_CMD_TG_SET_RF, skb);

	if (FUNC0(resp))
		return FUNC1(resp);

	rc = resp->data[0];

	FUNC2(resp);

	return rc;
}