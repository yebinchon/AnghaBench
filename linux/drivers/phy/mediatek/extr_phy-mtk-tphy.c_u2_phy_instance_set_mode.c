
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct u2phy_banks {scalar_t__ com; } ;
struct mtk_tphy {int dummy; } ;
struct mtk_phy_instance {struct u2phy_banks u2_banks; } ;
typedef enum phy_mode { ____Placeholder_phy_mode } phy_mode ;


 int P2C_FORCE_IDDIG ;
 int P2C_RG_IDDIG ;



 scalar_t__ U3P_U2PHYDTM1 ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void u2_phy_instance_set_mode(struct mtk_tphy *tphy,
         struct mtk_phy_instance *instance,
         enum phy_mode mode)
{
 struct u2phy_banks *u2_banks = &instance->u2_banks;
 u32 tmp;

 tmp = readl(u2_banks->com + U3P_U2PHYDTM1);
 switch (mode) {
 case 130:
  tmp |= P2C_FORCE_IDDIG | P2C_RG_IDDIG;
  break;
 case 129:
  tmp |= P2C_FORCE_IDDIG;
  tmp &= ~P2C_RG_IDDIG;
  break;
 case 128:
  tmp &= ~(P2C_FORCE_IDDIG | P2C_RG_IDDIG);
  break;
 default:
  return;
 }
 writel(tmp, u2_banks->com + U3P_U2PHYDTM1);
}
