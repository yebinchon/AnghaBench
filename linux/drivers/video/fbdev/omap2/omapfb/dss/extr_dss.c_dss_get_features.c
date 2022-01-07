
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_features {int dummy; } ;
 struct dss_features const am43xx_dss_feats ;
 struct dss_features const dra7xx_dss_feats ;
 struct dss_features const omap24xx_dss_feats ;
 struct dss_features const omap34xx_dss_feats ;
 struct dss_features const omap3630_dss_feats ;
 struct dss_features const omap44xx_dss_feats ;
 struct dss_features const omap54xx_dss_feats ;
 int omapdss_get_version () ;

__attribute__((used)) static const struct dss_features *dss_get_features(void)
{
 switch (omapdss_get_version()) {
 case 135:
  return &omap24xx_dss_feats;

 case 134:
 case 133:
 case 138:
  return &omap34xx_dss_feats;

 case 132:
  return &omap3630_dss_feats;

 case 130:
 case 129:
 case 131:
  return &omap44xx_dss_feats;

 case 128:
  return &omap54xx_dss_feats;

 case 137:
  return &am43xx_dss_feats;

 case 136:
  return &dra7xx_dss_feats;

 default:
  return ((void*)0);
 }
}
