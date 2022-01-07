
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int buffer_size_unit; } ;


 TYPE_1__* omap_current_dss_features ;

u32 dss_feat_get_buffer_size_unit(void)
{
 return omap_current_dss_features->buffer_size_unit;
}
