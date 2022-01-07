
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int DSSWARN (char*) ;
 int OMAP_DSS_CHANNEL_LCD ;
 int OMAP_DSS_CHANNEL_LCD2 ;
 int OMAP_DSS_CHANNEL_LCD3 ;
 int omapdss_get_version () ;

__attribute__((used)) static enum omap_channel dsi_get_channel(int module_id)
{
 switch (omapdss_get_version()) {
 case 135:
 case 136:
  DSSWARN("DSI not supported\n");
  return OMAP_DSS_CHANNEL_LCD;

 case 134:
 case 133:
 case 132:
 case 137:
  return OMAP_DSS_CHANNEL_LCD;

 case 130:
 case 129:
 case 131:
  switch (module_id) {
  case 0:
   return OMAP_DSS_CHANNEL_LCD;
  case 1:
   return OMAP_DSS_CHANNEL_LCD2;
  default:
   DSSWARN("unsupported module id\n");
   return OMAP_DSS_CHANNEL_LCD;
  }

 case 128:
  switch (module_id) {
  case 0:
   return OMAP_DSS_CHANNEL_LCD;
  case 1:
   return OMAP_DSS_CHANNEL_LCD3;
  default:
   DSSWARN("unsupported module id\n");
   return OMAP_DSS_CHANNEL_LCD;
  }

 default:
  DSSWARN("unsupported DSS version\n");
  return OMAP_DSS_CHANNEL_LCD;
 }
}
