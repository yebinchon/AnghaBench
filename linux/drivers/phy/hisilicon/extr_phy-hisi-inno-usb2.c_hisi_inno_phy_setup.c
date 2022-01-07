
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_inno_phy_priv {int dummy; } ;


 int PHY_CLK_ENABLE ;
 int PHY_CLK_STABLE_TIME ;
 int hisi_inno_phy_write_reg (struct hisi_inno_phy_priv*,int ,int,int ) ;
 int msleep (int ) ;

__attribute__((used)) static void hisi_inno_phy_setup(struct hisi_inno_phy_priv *priv)
{

 hisi_inno_phy_write_reg(priv, 0, 0x06, PHY_CLK_ENABLE);
 msleep(PHY_CLK_STABLE_TIME);
}
