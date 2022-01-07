
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snvs_lpgpr_priv {int regmap; struct snvs_lpgpr_cfg* dcfg; } ;
struct snvs_lpgpr_cfg {scalar_t__ offset; } ;


 int regmap_bulk_read (int ,scalar_t__,void*,size_t) ;

__attribute__((used)) static int snvs_lpgpr_read(void *context, unsigned int offset, void *val,
      size_t bytes)
{
 struct snvs_lpgpr_priv *priv = context;
 const struct snvs_lpgpr_cfg *dcfg = priv->dcfg;

 return regmap_bulk_read(priv->regmap, dcfg->offset + offset,
          val, bytes / 4);
}
