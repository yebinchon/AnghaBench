
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct uniphier_u3hsphy_trim_param {int dummy; } ;
struct uniphier_u3hsphy_priv {int dev; TYPE_1__* data; } ;
struct TYPE_2__ {int (* trim_func ) (struct uniphier_u3hsphy_priv*,int *,struct uniphier_u3hsphy_trim_param*) ;} ;


 int EPROBE_DEFER ;
 int FIELD_PREP (int ,int) ;
 int HSPHY_CFG0_HSDISC_MASK ;
 int dev_dbg (int ,char*) ;
 int stub1 (struct uniphier_u3hsphy_priv*,int *,struct uniphier_u3hsphy_trim_param*) ;
 scalar_t__ trim_param_is_valid (struct uniphier_u3hsphy_trim_param*) ;
 int uniphier_u3hsphy_get_nvparams (struct uniphier_u3hsphy_priv*,struct uniphier_u3hsphy_trim_param*) ;

__attribute__((used)) static int uniphier_u3hsphy_update_config(struct uniphier_u3hsphy_priv *priv,
       u32 *pconfig)
{
 struct uniphier_u3hsphy_trim_param trim;
 int ret, trimmed = 0;

 if (priv->data->trim_func) {
  ret = uniphier_u3hsphy_get_nvparams(priv, &trim);
  if (ret == -EPROBE_DEFER)
   return ret;






  if (!ret && trim_param_is_valid(&trim)) {
   priv->data->trim_func(priv, pconfig, &trim);
   trimmed = 1;
  } else {
   dev_dbg(priv->dev, "can't get parameter from nvmem\n");
  }
 }


 if (!trimmed) {
  *pconfig &= ~HSPHY_CFG0_HSDISC_MASK;
  *pconfig |= FIELD_PREP(HSPHY_CFG0_HSDISC_MASK, 3);
 }

 return 0;
}
