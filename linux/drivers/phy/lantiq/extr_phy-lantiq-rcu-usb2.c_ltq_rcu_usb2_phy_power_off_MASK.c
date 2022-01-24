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
struct phy {int dummy; } ;
struct ltq_rcu_usb2_priv {int /*<<< orphan*/  phy_gate_clk; int /*<<< orphan*/  phy_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ltq_rcu_usb2_priv* FUNC1 (struct phy*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct phy *phy)
{
	struct ltq_rcu_usb2_priv *priv = FUNC1(phy);

	FUNC2(priv->phy_reset);

	FUNC0(priv->phy_gate_clk);

	return 0;
}