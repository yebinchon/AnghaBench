
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;
typedef enum omap_color_mode { ____Placeholder_omap_color_mode } omap_color_mode ;
struct TYPE_2__ {int* supported_color_modes; } ;


 TYPE_1__* omap_current_dss_features ;

enum omap_color_mode dss_feat_get_supported_color_modes(enum omap_plane plane)
{
 return omap_current_dss_features->supported_color_modes[plane];
}
