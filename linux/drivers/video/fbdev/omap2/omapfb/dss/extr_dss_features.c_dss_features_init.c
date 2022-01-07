
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum omapdss_version { ____Placeholder_omapdss_version } omapdss_version ;


 int DSSWARN (char*) ;
 int am35xx_dss_features ;
 int am43xx_dss_features ;
 int omap2_dss_features ;
 int omap3430_dss_features ;
 int omap3630_dss_features ;
 int omap4430_es1_0_dss_features ;
 int omap4430_es2_0_1_2_dss_features ;
 int omap4_dss_features ;
 int omap5_dss_features ;
 int * omap_current_dss_features ;

void dss_features_init(enum omapdss_version version)
{
 switch (version) {
 case 135:
  omap_current_dss_features = &omap2_dss_features;
  break;

 case 134:
 case 133:
  omap_current_dss_features = &omap3430_dss_features;
  break;

 case 132:
  omap_current_dss_features = &omap3630_dss_features;
  break;

 case 130:
  omap_current_dss_features = &omap4430_es1_0_dss_features;
  break;

 case 129:
  omap_current_dss_features = &omap4430_es2_0_1_2_dss_features;
  break;

 case 131:
  omap_current_dss_features = &omap4_dss_features;
  break;

 case 128:
 case 136:
  omap_current_dss_features = &omap5_dss_features;
  break;

 case 138:
  omap_current_dss_features = &am35xx_dss_features;
  break;

 case 137:
  omap_current_dss_features = &am43xx_dss_features;
  break;

 default:
  DSSWARN("Unsupported OMAP version");
  break;
 }
}
