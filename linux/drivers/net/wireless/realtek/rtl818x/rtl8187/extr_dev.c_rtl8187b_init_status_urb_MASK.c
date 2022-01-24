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
struct urb {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;
struct rtl8187_priv {int /*<<< orphan*/  anchored; TYPE_1__ b_tx_status; int /*<<< orphan*/  udev; } ;
struct ieee80211_hw {struct rtl8187_priv* priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  rtl8187b_status_cb ; 
 struct urb* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 

__attribute__((used)) static int FUNC7(struct ieee80211_hw *dev)
{
	struct rtl8187_priv *priv = dev->priv;
	struct urb *entry;
	int ret = 0;

	entry = FUNC0(0, GFP_KERNEL);
	if (!entry)
		return -ENOMEM;

	FUNC2(entry, priv->udev, FUNC4(priv->udev, 9),
			  &priv->b_tx_status.buf, sizeof(priv->b_tx_status.buf),
			  rtl8187b_status_cb, dev);

	FUNC1(entry, &priv->anchored);
	ret = FUNC5(entry, GFP_KERNEL);
	if (ret)
		FUNC6(entry);
	FUNC3(entry);

	return ret;
}