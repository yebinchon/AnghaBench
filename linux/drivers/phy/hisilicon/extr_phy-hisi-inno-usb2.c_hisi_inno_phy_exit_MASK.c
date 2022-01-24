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
struct hisi_inno_phy_priv {int /*<<< orphan*/  ref_clk; int /*<<< orphan*/  por_rst; } ;
struct hisi_inno_phy_port {int /*<<< orphan*/  utmi_rst; struct hisi_inno_phy_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct hisi_inno_phy_port* FUNC1 (struct phy*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct phy *phy)
{
	struct hisi_inno_phy_port *port = FUNC1(phy);
	struct hisi_inno_phy_priv *priv = port->priv;

	FUNC2(port->utmi_rst);
	FUNC2(priv->por_rst);
	FUNC0(priv->ref_clk);

	return 0;
}