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
struct ieee80211_hw {int /*<<< orphan*/  wiphy; struct cw1200_common* priv; } ;
struct cw1200_common {int /*<<< orphan*/  pm_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct cw1200_common*) ; 
 int FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ieee80211_hw *dev)
{
	struct cw1200_common *priv = dev->priv;
	int err;

#ifdef CONFIG_PM
	err = cw1200_pm_init(&priv->pm_state, priv);
	if (err) {
		pr_err("Cannot init PM. (%d).\n",
		       err);
		return err;
	}
#endif

	err = FUNC3(dev);
	if (err) {
		FUNC4("Cannot register device (%d).\n",
		       err);
#ifdef CONFIG_PM
		cw1200_pm_deinit(&priv->pm_state);
#endif
		return err;
	}

	FUNC0(priv);

	FUNC5("Registered as '%s'\n", FUNC6(dev->wiphy));
	return 0;
}