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
struct vnt_private {int cmd_running; int /*<<< orphan*/  interrupt_urb; int /*<<< orphan*/  run_command_work; int /*<<< orphan*/  flags; scalar_t__ key_entry_inuse; } ;
struct ieee80211_hw {struct vnt_private* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_FLAGS_DISCONNECTED ; 
 int /*<<< orphan*/  DEVICE_FLAGS_UNPLUG ; 
 int MAX_KEY_TABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct vnt_private*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct vnt_private*) ; 

__attribute__((used)) static void FUNC11(struct ieee80211_hw *hw)
{
	struct vnt_private *priv = hw->priv;
	int i;

	if (!priv)
		return;

	for (i = 0; i < MAX_KEY_TABLE; i++)
		FUNC9(priv, i);

	/* clear all keys */
	priv->key_entry_inuse = 0;

	if (!FUNC3(DEVICE_FLAGS_UNPLUG, &priv->flags))
		FUNC10(priv);

	FUNC1(hw);

	FUNC2(DEVICE_FLAGS_DISCONNECTED, &priv->flags);

	FUNC0(&priv->run_command_work);

	priv->cmd_running = false;

	FUNC8(priv);
	FUNC7(priv);
	FUNC6(priv);

	FUNC5(priv->interrupt_urb);
	FUNC4(priv->interrupt_urb);
}