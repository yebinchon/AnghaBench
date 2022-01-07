
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct hisi_inno_phy_priv {int ref_clk; int por_rst; } ;
struct hisi_inno_phy_port {int utmi_rst; struct hisi_inno_phy_priv* priv; } ;


 int clk_disable_unprepare (int ) ;
 struct hisi_inno_phy_port* phy_get_drvdata (struct phy*) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int hisi_inno_phy_exit(struct phy *phy)
{
 struct hisi_inno_phy_port *port = phy_get_drvdata(phy);
 struct hisi_inno_phy_priv *priv = port->priv;

 reset_control_assert(port->utmi_rst);
 reset_control_assert(priv->por_rst);
 clk_disable_unprepare(priv->ref_clk);

 return 0;
}
