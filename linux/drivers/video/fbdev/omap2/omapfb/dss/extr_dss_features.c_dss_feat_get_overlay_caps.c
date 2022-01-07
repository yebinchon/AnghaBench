
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;
typedef enum omap_overlay_caps { ____Placeholder_omap_overlay_caps } omap_overlay_caps ;
struct TYPE_2__ {int* overlay_caps; } ;


 TYPE_1__* omap_current_dss_features ;

enum omap_overlay_caps dss_feat_get_overlay_caps(enum omap_plane plane)
{
 return omap_current_dss_features->overlay_caps[plane];
}
