
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_features {int dummy; } ;
 struct dispc_features const omap24xx_dispc_feats ;
 struct dispc_features const omap34xx_rev1_0_dispc_feats ;
 struct dispc_features const omap34xx_rev3_0_dispc_feats ;
 struct dispc_features const omap44xx_dispc_feats ;
 struct dispc_features const omap54xx_dispc_feats ;
 int omapdss_get_version () ;

__attribute__((used)) static const struct dispc_features *dispc_get_features(void)
{
 switch (omapdss_get_version()) {
 case 135:
  return &omap24xx_dispc_feats;

 case 134:
  return &omap34xx_rev1_0_dispc_feats;

 case 133:
 case 132:
 case 138:
 case 137:
  return &omap34xx_rev3_0_dispc_feats;

 case 130:
 case 129:
 case 131:
  return &omap44xx_dispc_feats;

 case 128:
 case 136:
  return &omap54xx_dispc_feats;

 default:
  return ((void*)0);
 }
}
