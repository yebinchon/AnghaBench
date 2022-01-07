
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum omap_dss_output_id { ____Placeholder_omap_dss_output_id } omap_dss_output_id ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_2__ {int* supported_outputs; } ;


 TYPE_1__* omap_current_dss_features ;

enum omap_dss_output_id dss_feat_get_supported_outputs(enum omap_channel channel)
{
 return omap_current_dss_features->supported_outputs[channel];
}
