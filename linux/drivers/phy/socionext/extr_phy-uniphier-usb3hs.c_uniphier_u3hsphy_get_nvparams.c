
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_u3hsphy_trim_param {int hs_i; int sel_t; int rterm; } ;
struct uniphier_u3hsphy_priv {int dummy; } ;


 int uniphier_u3hsphy_get_nvparam (struct uniphier_u3hsphy_priv*,char*,int *) ;

__attribute__((used)) static int uniphier_u3hsphy_get_nvparams(struct uniphier_u3hsphy_priv *priv,
      struct uniphier_u3hsphy_trim_param *pt)
{
 int ret;

 ret = uniphier_u3hsphy_get_nvparam(priv, "rterm", &pt->rterm);
 if (ret)
  return ret;

 ret = uniphier_u3hsphy_get_nvparam(priv, "sel_t", &pt->sel_t);
 if (ret)
  return ret;

 ret = uniphier_u3hsphy_get_nvparam(priv, "hs_i", &pt->hs_i);
 if (ret)
  return ret;

 return 0;
}
