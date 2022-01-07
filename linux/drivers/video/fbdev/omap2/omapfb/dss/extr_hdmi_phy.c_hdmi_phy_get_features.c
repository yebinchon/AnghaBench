
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_phy_features {int dummy; } ;







 struct hdmi_phy_features const omap44xx_phy_feats ;
 struct hdmi_phy_features const omap54xx_phy_feats ;
 int omapdss_get_version () ;

__attribute__((used)) static const struct hdmi_phy_features *hdmi_phy_get_features(void)
{
 switch (omapdss_get_version()) {
 case 130:
 case 129:
 case 131:
  return &omap44xx_phy_feats;

 case 128:
 case 132:
  return &omap54xx_phy_feats;

 default:
  return ((void*)0);
 }
}
