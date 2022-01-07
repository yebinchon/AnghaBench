
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_pll {int dummy; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
 struct dss_pll* dss_pll_find (char*) ;
 int omapdss_get_version () ;

__attribute__((used)) static struct dss_pll *dpi_get_pll(enum omap_channel channel)
{





 switch (omapdss_get_version()) {
 case 138:
 case 137:
 case 136:
 case 135:
 case 141:
 case 140:
  return ((void*)0);

 case 133:
 case 132:
 case 134:
  switch (channel) {
  case 130:
   return dss_pll_find("dsi0");
  case 129:
   return dss_pll_find("dsi1");
  default:
   return ((void*)0);
  }

 case 131:
  switch (channel) {
  case 130:
   return dss_pll_find("dsi0");
  case 128:
   return dss_pll_find("dsi1");
  default:
   return ((void*)0);
  }

 case 139:
  switch (channel) {
  case 130:
  case 129:
   return dss_pll_find("video0");
  case 128:
   return dss_pll_find("video1");
  default:
   return ((void*)0);
  }

 default:
  return ((void*)0);
 }
}
