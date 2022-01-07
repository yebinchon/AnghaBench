
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum dss_range_param { ____Placeholder_dss_range_param } dss_range_param ;
struct TYPE_4__ {TYPE_1__* dss_params; } ;
struct TYPE_3__ {unsigned long max; } ;


 TYPE_2__* omap_current_dss_features ;

unsigned long dss_feat_get_param_max(enum dss_range_param param)
{
 return omap_current_dss_features->dss_params[param].max;
}
