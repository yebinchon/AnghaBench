
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xsphy_instance {scalar_t__ port_base; } ;
struct mtk_xsphy {int dummy; } ;
typedef enum phy_mode { ____Placeholder_phy_mode } phy_mode ;


 int P2D_FORCE_IDDIG ;
 int P2D_RG_IDDIG ;



 scalar_t__ XSP_U2PHYDTM1 ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void u2_phy_instance_set_mode(struct mtk_xsphy *xsphy,
         struct xsphy_instance *inst,
         enum phy_mode mode)
{
 u32 tmp;

 tmp = readl(inst->port_base + XSP_U2PHYDTM1);
 switch (mode) {
 case 130:
  tmp |= P2D_FORCE_IDDIG | P2D_RG_IDDIG;
  break;
 case 129:
  tmp |= P2D_FORCE_IDDIG;
  tmp &= ~P2D_RG_IDDIG;
  break;
 case 128:
  tmp &= ~(P2D_FORCE_IDDIG | P2D_RG_IDDIG);
  break;
 default:
  return;
 }
 writel(tmp, inst->port_base + XSP_U2PHYDTM1);
}
