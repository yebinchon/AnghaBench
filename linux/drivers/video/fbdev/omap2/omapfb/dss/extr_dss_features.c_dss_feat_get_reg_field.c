
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef enum dss_feat_reg_field { ____Placeholder_dss_feat_reg_field } dss_feat_reg_field ;
struct TYPE_4__ {int num_reg_fields; TYPE_1__* reg_fields; } ;
struct TYPE_3__ {int end; int start; } ;


 int BUG_ON (int) ;
 TYPE_2__* omap_current_dss_features ;

void dss_feat_get_reg_field(enum dss_feat_reg_field id, u8 *start, u8 *end)
{
 BUG_ON(id >= omap_current_dss_features->num_reg_fields);

 *start = omap_current_dss_features->reg_fields[id].start;
 *end = omap_current_dss_features->reg_fields[id].end;
}
