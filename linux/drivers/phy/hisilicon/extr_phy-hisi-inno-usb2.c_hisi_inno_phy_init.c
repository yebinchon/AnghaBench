
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct hisi_inno_phy_priv {int por_rst; int ref_clk; } ;
struct hisi_inno_phy_port {int utmi_rst; struct hisi_inno_phy_priv* priv; } ;


 int POR_RST_COMPLETE_TIME ;
 int REF_CLK_STABLE_TIME ;
 int UTMI_RST_COMPLETE_TIME ;
 int clk_prepare_enable (int ) ;
 int hisi_inno_phy_setup (struct hisi_inno_phy_priv*) ;
 struct hisi_inno_phy_port* phy_get_drvdata (struct phy*) ;
 int reset_control_deassert (int ) ;
 int udelay (int ) ;

__attribute__((used)) static int hisi_inno_phy_init(struct phy *phy)
{
 struct hisi_inno_phy_port *port = phy_get_drvdata(phy);
 struct hisi_inno_phy_priv *priv = port->priv;
 int ret;

 ret = clk_prepare_enable(priv->ref_clk);
 if (ret)
  return ret;
 udelay(REF_CLK_STABLE_TIME);

 reset_control_deassert(priv->por_rst);
 udelay(POR_RST_COMPLETE_TIME);


 hisi_inno_phy_setup(priv);

 reset_control_deassert(port->utmi_rst);
 udelay(UTMI_RST_COMPLETE_TIME);

 return 0;
}
