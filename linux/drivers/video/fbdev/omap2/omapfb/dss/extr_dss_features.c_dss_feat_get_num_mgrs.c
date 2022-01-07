
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_mgrs; } ;


 TYPE_1__* omap_current_dss_features ;

int dss_feat_get_num_mgrs(void)
{
 return omap_current_dss_features->num_mgrs;
}
