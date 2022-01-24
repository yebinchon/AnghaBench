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
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct nfcmrvl_private {int /*<<< orphan*/  flags; struct nfcmrvl_i2c_drv_data* drv_data; } ;
struct nfcmrvl_i2c_drv_data {int /*<<< orphan*/  dev; int /*<<< orphan*/  i2c; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int /*<<< orphan*/  NFCMRVL_PHY_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct nfcmrvl_private *priv,
				struct sk_buff *skb)
{
	struct nfcmrvl_i2c_drv_data *drv_data = priv->drv_data;
	int ret;

	if (FUNC4(NFCMRVL_PHY_ERROR, &priv->flags))
		return -EREMOTEIO;

	ret = FUNC0(drv_data->i2c, skb->data, skb->len);

	/* Retry if chip was in standby */
	if (ret == -EREMOTEIO) {
		FUNC3(drv_data->dev, "chip may sleep, retry\n");
		FUNC5(6000, 10000);
		ret = FUNC0(drv_data->i2c, skb->data, skb->len);
	}

	if (ret >= 0) {
		if (ret != skb->len) {
			FUNC2(drv_data->dev,
				"Invalid length sent: %u (expected %u)\n",
				ret, skb->len);
			ret = -EREMOTEIO;
		} else
			ret = 0;
		FUNC1(skb);
	}

	return ret;
}