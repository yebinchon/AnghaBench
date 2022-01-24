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
struct hisi_inno_phy_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_CLK_ENABLE ; 
 int /*<<< orphan*/  PHY_CLK_STABLE_TIME ; 
 int /*<<< orphan*/  FUNC0 (struct hisi_inno_phy_priv*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct hisi_inno_phy_priv *priv)
{
	/* The phy clk is controlled by the port0 register 0x06. */
	FUNC0(priv, 0, 0x06, PHY_CLK_ENABLE);
	FUNC1(PHY_CLK_STABLE_TIME);
}