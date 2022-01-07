
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum dss_feat_id { ____Placeholder_dss_feat_id } dss_feat_id ;
struct TYPE_2__ {int* features; int num_features; } ;


 TYPE_1__* omap_current_dss_features ;

bool dss_has_feature(enum dss_feat_id id)
{
 int i;
 const enum dss_feat_id *features = omap_current_dss_features->features;
 const int num_features = omap_current_dss_features->num_features;

 for (i = 0; i < num_features; i++) {
  if (features[i] == id)
   return 1;
 }

 return 0;
}
