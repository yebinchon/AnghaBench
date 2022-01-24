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
typedef  int /*<<< orphan*/  u8 ;
struct wsm_operational_mode {int disable_more_flag_usage; int /*<<< orphan*/  power_mode; } ;
struct ieee80211_hw {struct cw1200_common* priv; } ;
struct hwbus_priv {int dummy; } ;
struct hwbus_ops {int dummy; } ;
struct device {int dummy; } ;
struct cw1200_common {int hw_refclk; char* sdd_path; int /*<<< orphan*/  firmware_ready; int /*<<< orphan*/  wsm_startup_done; int /*<<< orphan*/  hw; struct device* pdev; struct hwbus_priv* hwbus_priv; struct hwbus_ops const* hwbus_ops; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 struct ieee80211_hw* FUNC2 (int /*<<< orphan*/  const*,int) ; 
 int FUNC3 (struct cw1200_common*) ; 
 int /*<<< orphan*/  cw1200_power_mode ; 
 int cw1200_refclk ; 
 int FUNC4 (struct cw1200_common*) ; 
 int FUNC5 (struct ieee80211_hw*) ; 
 char* cw1200_sdd_path ; 
 int /*<<< orphan*/  FUNC6 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct cw1200_common*,struct wsm_operational_mode*) ; 
 int /*<<< orphan*/  FUNC10 (struct cw1200_common*,int) ; 

int FUNC11(const struct hwbus_ops *hwbus_ops,
		      struct hwbus_priv *hwbus,
		      struct device *pdev,
		      struct cw1200_common **core,
		      int ref_clk, const u8 *macaddr,
		      const char *sdd_path, bool have_5ghz)
{
	int err = -EINVAL;
	struct ieee80211_hw *dev;
	struct cw1200_common *priv;
	struct wsm_operational_mode mode = {
		.power_mode = cw1200_power_mode,
		.disable_more_flag_usage = true,
	};

	dev = FUNC2(macaddr, have_5ghz);
	if (!dev)
		goto err;

	priv = dev->priv;
	priv->hw_refclk = ref_clk;
	if (cw1200_refclk)
		priv->hw_refclk = cw1200_refclk;

	priv->sdd_path = (char *)sdd_path;
	if (cw1200_sdd_path)
		priv->sdd_path = cw1200_sdd_path;

	priv->hwbus_ops = hwbus_ops;
	priv->hwbus_priv = hwbus;
	priv->pdev = pdev;
	FUNC0(priv->hw, pdev);

	/* Pass struct cw1200_common back up */
	*core = priv;

	err = FUNC4(priv);
	if (err)
		goto err1;

	err = FUNC3(priv);
	if (err)
		goto err2;

	if (FUNC8(priv->wsm_startup_done,
					     priv->firmware_ready,
					     3*HZ) <= 0) {
		/* TODO: Need to find how to reset device
		   in QUEUE mode properly.
		*/
		FUNC7("Timeout waiting on device startup\n");
		err = -ETIMEDOUT;
		goto err2;
	}

	/* Set low-power mode. */
	FUNC9(priv, &mode);

	/* Enable multi-TX confirmation */
	FUNC10(priv, true);

	err = FUNC5(dev);
	if (err)
		goto err2;

	return err;

err2:
	FUNC6(priv);
err1:
	FUNC1(dev);
err:
	*core = NULL;
	return err;
}