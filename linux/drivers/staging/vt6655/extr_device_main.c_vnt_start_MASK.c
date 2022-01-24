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
struct vnt_private {TYPE_1__* pcid; int /*<<< orphan*/  PortOffset; int /*<<< orphan*/  rx_buf_sz; } ;
struct ieee80211_hw {struct vnt_private* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IMR_MASK_VALUE ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PKT_BUF_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnt_private*) ; 
 int FUNC6 (struct vnt_private*) ; 
 int FUNC7 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct vnt_private*) ; 
 int FUNC10 (struct vnt_private*) ; 
 int FUNC11 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_hw*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct vnt_private*) ; 
 int /*<<< orphan*/  vnt_interrupt ; 

__attribute__((used)) static int FUNC15(struct ieee80211_hw *hw)
{
	struct vnt_private *priv = hw->priv;
	int ret;

	priv->rx_buf_sz = PKT_BUF_SZ;
	if (!FUNC9(priv))
		return -ENOMEM;

	ret = FUNC14(priv->pcid->irq, vnt_interrupt,
			  IRQF_SHARED, "vt6655", priv);
	if (ret) {
		FUNC1(&priv->pcid->dev, "failed to start irq\n");
		goto err_free_rings;
	}

	FUNC1(&priv->pcid->dev, "call device init rd0 ring\n");
	ret = FUNC6(priv);
	if (ret)
		goto err_free_irq;
	ret = FUNC7(priv);
	if (ret)
		goto err_free_rd0_ring;
	ret = FUNC10(priv);
	if (ret)
		goto err_free_rd1_ring;
	ret = FUNC11(priv);
	if (ret)
		goto err_free_td0_ring;

	FUNC8(priv);

	FUNC1(&priv->pcid->dev, "call MACvIntEnable\n");
	FUNC0(priv->PortOffset, IMR_MASK_VALUE);

	FUNC13(hw);

	return 0;

err_free_td0_ring:
	FUNC5(priv);
err_free_rd1_ring:
	FUNC3(priv);
err_free_rd0_ring:
	FUNC2(priv);
err_free_irq:
	FUNC12(priv->pcid->irq, priv);
err_free_rings:
	FUNC4(priv);
	return ret;
}