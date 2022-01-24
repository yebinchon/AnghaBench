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
struct hisi_inno_phy_priv {int /*<<< orphan*/  por_rst; int /*<<< orphan*/  ref_clk; } ;
struct hisi_inno_phy_port {int /*<<< orphan*/  utmi_rst; struct hisi_inno_phy_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  POR_RST_COMPLETE_TIME ; 
 int /*<<< orphan*/  REF_CLK_STABLE_TIME ; 
 int /*<<< orphan*/  UTMI_RST_COMPLETE_TIME ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_inno_phy_priv*) ; 
 struct hisi_inno_phy_port* FUNC2 (struct phy*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct phy *phy)
{
	struct hisi_inno_phy_port *port = FUNC2(phy);
	struct hisi_inno_phy_priv *priv = port->priv;
	int ret;

	ret = FUNC0(priv->ref_clk);
	if (ret)
		return ret;
	FUNC4(REF_CLK_STABLE_TIME);

	FUNC3(priv->por_rst);
	FUNC4(POR_RST_COMPLETE_TIME);

	/* Set up phy registers */
	FUNC1(priv);

	FUNC3(port->utmi_rst);
	FUNC4(UTMI_RST_COMPLETE_TIME);

	return 0;
}