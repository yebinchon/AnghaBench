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
struct vnt_private {TYPE_1__* pcid; int /*<<< orphan*/  interrupt_work; } ;
struct ieee80211_hw {struct vnt_private* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC11(struct ieee80211_hw *hw)
{
	struct vnt_private *priv = hw->priv;

	FUNC10(hw);

	FUNC3(&priv->interrupt_work);

	FUNC1(priv);
	FUNC2(priv);
	FUNC0(priv);

	FUNC7(priv);
	FUNC8(priv);
	FUNC4(priv);
	FUNC5(priv);
	FUNC6(priv);

	FUNC9(priv->pcid->irq, priv);
}