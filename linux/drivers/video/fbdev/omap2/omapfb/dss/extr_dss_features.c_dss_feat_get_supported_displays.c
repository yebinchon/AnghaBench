
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum omap_display_type { ____Placeholder_omap_display_type } omap_display_type ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_2__ {int* supported_displays; } ;


 TYPE_1__* omap_current_dss_features ;

enum omap_display_type dss_feat_get_supported_displays(enum omap_channel channel)
{
 return omap_current_dss_features->supported_displays[channel];
}
