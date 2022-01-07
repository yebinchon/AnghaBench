
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier_u3hsphy_trim_param {int hs_i; int sel_t; int rterm; } ;
struct uniphier_u3hsphy_priv {int dummy; } ;


 int FIELD_PREP (int ,int ) ;
 int HSPHY_CFG0_HS_I_MASK ;
 int HSPHY_CFG0_RTERM_MASK ;
 int HSPHY_CFG0_SEL_T_MASK ;

__attribute__((used)) static void uniphier_u3hsphy_trim_ld20(struct uniphier_u3hsphy_priv *priv,
           u32 *pconfig,
           struct uniphier_u3hsphy_trim_param *pt)
{
 *pconfig &= ~HSPHY_CFG0_RTERM_MASK;
 *pconfig |= FIELD_PREP(HSPHY_CFG0_RTERM_MASK, pt->rterm);

 *pconfig &= ~HSPHY_CFG0_SEL_T_MASK;
 *pconfig |= FIELD_PREP(HSPHY_CFG0_SEL_T_MASK, pt->sel_t);

 *pconfig &= ~HSPHY_CFG0_HS_I_MASK;
 *pconfig |= FIELD_PREP(HSPHY_CFG0_HS_I_MASK, pt->hs_i);
}
