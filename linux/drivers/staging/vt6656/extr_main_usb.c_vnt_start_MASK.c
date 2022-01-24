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
struct vnt_private {int int_interval; int /*<<< orphan*/  interrupt_urb; TYPE_1__* usb; int /*<<< orphan*/  flags; int /*<<< orphan*/  rx_buf_sz; } ;
struct ieee80211_hw {struct vnt_private* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_FLAGS_DISCONNECTED ; 
 int /*<<< orphan*/  MAX_TOTAL_SIZE_WITH_ALL_HEADERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnt_private*) ; 
 int FUNC9 (struct vnt_private*) ; 
 int FUNC10 (struct vnt_private*) ; 
 int FUNC11 (struct vnt_private*) ; 

__attribute__((used)) static int FUNC12(struct ieee80211_hw *hw)
{
	int ret = 0;
	struct vnt_private *priv = hw->priv;

	priv->rx_buf_sz = MAX_TOTAL_SIZE_WITH_ALL_HEADERS;

	ret = FUNC5(priv);
	if (ret) {
		FUNC1(&priv->usb->dev, "vnt_alloc_bufs fail...\n");
		goto err;
	}

	FUNC0(DEVICE_FLAGS_DISCONNECTED, &priv->flags);

	ret = FUNC9(priv);
	if (ret) {
		FUNC1(&priv->usb->dev, " init register fail\n");
		goto free_all;
	}

	ret = FUNC11(priv);
	if (ret)
		goto free_all;

	priv->int_interval = 1;  /* bInterval is set to 1 */

	ret = FUNC10(priv);
	if (ret)
		goto free_all;

	FUNC2(hw);

	return 0;

free_all:
	FUNC7(priv);
	FUNC8(priv);
	FUNC6(priv);

	FUNC4(priv->interrupt_urb);
	FUNC3(priv->interrupt_urb);
err:
	return ret;
}