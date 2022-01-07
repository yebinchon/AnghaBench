
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum omap_dss_rotation_type { ____Placeholder_omap_dss_rotation_type } omap_dss_rotation_type ;
struct TYPE_2__ {int supported_rotation_types; } ;


 TYPE_1__* omap_current_dss_features ;

bool dss_feat_rotation_type_supported(enum omap_dss_rotation_type rot_type)
{
 return omap_current_dss_features->supported_rotation_types & rot_type;
}
